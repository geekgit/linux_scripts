#!/bin/bash
function CountVideoTracks
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep video | wc -l)"
}
function CountAudioTracks
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep audio | wc -l)"
}
function CountSubtitlesTracks
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep subtitles | wc -l)"
}
function CountAttachments
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep Attachment | wc -l)"
}
function PrintVideoTracks
{
	mkvmerge -i --ui-language en_US "$File" | grep video
}
function PrintAudioTracks
{
	mkvmerge -i --ui-language en_US "$File" | grep audio
}
function PrintSubtitlesTracks
{
	mkvmerge -i --ui-language en_US "$File" | grep subtitles
}
function PrintAttachments
{
	mkvmerge -i --ui-language en_US "$File" | grep Attachment
}
File="$1"
echo "Video tracks: $(CountVideoTracks) | Audio tracks: $(CountAudioTracks) | Subtitles tracks: $(CountSubtitlesTracks) | Attachments: $(CountAttachments)"
echo "Video:"
PrintVideoTracks
echo "Audio:"
PrintAudioTracks
echo "Subtitles:"
PrintSubtitlesTracks
echo "Attachments:"
PrintAttachments
