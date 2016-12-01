#!/bin/bash
# apt-get install -y htmldoc -> htmldoc
# apt-get install -y python-pisa -> xhtml2pdf
# apt-get install -y xml-twig-tools -> xml_grep
Arg="$@"
URL="$1"
TmpFolder="$HOME/$(uuidgen)-url-to-pdf"
OutputFolder="$HOME/url-to-pdf"
echo "Arg: ${Arg}"
echo "URL: ${URL}"
mkdir -p "${OutputFolder}"
mkdir -p "${TmpFolder}"
echo "Temp Folder: ${TmpFolder}"
echo "Output Folder: ${OutputFolder}"
#
# wget
Filename="html-00.html"
Filepath="${TmpFolder}/${Filename}"
wget --header="Accept: text/html" --user-agent="$(geekgit-generate-browser-user-agent)" "${URL}" -O "${Filepath}"
Hash=$(cksum "${Filepath}" | awk '{print $1}' | xargs)
echo "Hash: $Hash"
# title rename
HTMLTitle=$(xml_grep --text_only title "${Filepath}" 2>&1)
echo "HTML Title: $HTMLTitle"
TempTitle=$(echo "${HTMLTitle}" | tr -dc '[:alnum:]\n\r' | tr '[:upper:]' '[:lower:]' | perl -pe 's/[^\w.-]+//g')
echo "Temp Title: ${TempTitle}"
SimpleTitle="${TempTitle}"
echo "Simple: $SimpleTitle"
#
FilepathRename="${TmpFolder}/${SimpleTitle}${Hash}.html"
mv "${Filepath}" "${FilepathRename}"
Filepath="${FilepathRename}"
Plain="${SimpleTitle}${Hash}"
#
PDFHtmldocPath="${OutputFolder}/htmldoc-${Plain}.pdf"
htmldoc --webpage "${Filepath}" -f "${PDFHtmldocPath}" &> /dev/null
PDFXhtml2pdfPath="${OutputFolder}/xhtml2pdf-${Plain}.pdf"
xhtml2pdf "${Filepath}" "${PDFXhtml2pdfPath}" &> /dev/null
#cp "${TmpFolder}/*.pdf" "${OutputFolder}"
#clean
rm -rf "${TmpFolder}"
