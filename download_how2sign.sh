#!/bin/bash
#
# This script will create the folder structure and download the How2Sign dataset.
# For any questions about the following instructions or the data please contact: amanda.duarte[at]upc.edu
#
# To use this script, first choose the modalities that you would like to download and pass it as an argument to the command.
# For example, to download the "rgb_front_videos", the "rgb_side_videos" and the "english_translation_re-aligned" you can use the following command:
#
# ./download_how2sign.sh rgb_front_videos rgb_side_videos english_translation_re-aligned
#
# The names of the modalities avaliable for download can be found at the botton of this document
################################################################################

# Provide at least one argument to script
if (( $# < 1 ))
then
	echo "USAGE: $0 <argument1> <argument2> ..."
	exit
fi

echo "Downloading the How2Sign dataset"

#############################################
# Create folder structure and download data #
#############################################

#------------------------- Green Screen RGB videos - Frontal View -------------------------#
rgb_front_videos()
{
	mkdir -p "./How2Sign/video_level/train/rgb_front"
	mkdir -p "./How2Sign/video_level/val/rgb_front"
	mkdir -p "./How2Sign/video_level/test/rgb_front"

	echo "***** Downloading Green Screen RGB videos (Frontal View)... You can go get a coffee, this might take a while!*****"

	## Train
	### train_raw_videos.z01
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1xWlMM2O3Gbp_8LK5FefoH0TVEmae6jIf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1xWlMM2O3Gbp_8LK5FefoH0TVEmae6jIf" -O train_raw_videos.z01 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z02
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1krtYdpK_LQFgEUCnHxoYAW7EyhLMLWq0' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1krtYdpK_LQFgEUCnHxoYAW7EyhLMLWq0" -O train_raw_videos.z02 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z03
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1fXpWRNFhpuVm3ym7lT9vF_bnDjHkvP_K' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1fXpWRNFhpuVm3ym7lT9vF_bnDjHkvP_K" -O train_raw_videos.z03 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z04
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1IFetFt4AzsxNCMZ0VVpX7YRgFAm58X48' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1IFetFt4AzsxNCMZ0VVpX7YRgFAm58X48" -O train_raw_videos.z04 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z05
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ZHuuun6Ae-AOLBns3LmuH7w8C9YCB4gH' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ZHuuun6Ae-AOLBns3LmuH7w8C9YCB4gH" -O train_raw_videos.z05 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z06
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1FQQIPblk-oLH_vu7h2tDO0oJaZ3xkp5N' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1FQQIPblk-oLH_vu7h2tDO0oJaZ3xkp5N" -O train_raw_videos.z06 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z07
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=19XNgERcolGAMPPgX-Gx_GebSTx3W4o0r' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=19XNgERcolGAMPPgX-Gx_GebSTx3W4o0r" -O train_raw_videos.z07 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z08
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1YN-SA9uzrogEdKeT6UdQUIcuGEyYJILg' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1YN-SA9uzrogEdKeT6UdQUIcuGEyYJILg" -O train_raw_videos.z08 && rm -rf /tmp/cookies.txt

	### train_raw_videos.z09
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1SZQ2GzPLCkRqvsImAjULAPBiuAKi9DE9' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1SZQ2GzPLCkRqvsImAjULAPBiuAKi9DE9" -O train_raw_videos.z09 && rm -rf /tmp/cookies.txt

	### train_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Xe1T5okJiopMXUiH3sc0mdCWNDYSBopd' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Xe1T5okJiopMXUiH3sc0mdCWNDYSBopd" -O train_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1fCkyuKSsc7gauljuL9sx_jBomf3N6i0g' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1fCkyuKSsc7gauljuL9sx_jBomf3N6i0g" -O val_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Test
	### test_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1z0i6BBGHQ12ChY63hZH56QnczvQ0JfTb' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1z0i6BBGHQ12ChY63hZH56QnczvQ0JfTb" -O test_raw_videos.zip && rm -rf /tmp/cookies.txt

	# Merge all train zip files
	echo "***** Preparing the downloaded files... this might take some time! *****"
	cat train_raw_videos.z* > train_raw_videos_all.zip

	unzip train_raw_videos_all.zip -d ./How2Sign/video_level/train/rgb_front && rm -rf train_raw_videos_all.zip
	unzip val_raw_videos.zip   -d ./How2Sign/video_level/val/rgb_front && rm -rf val_raw_videos.zip
	unzip test_raw_videos.zip  -d ./How2Sign/video_level/test/rgb_front && rm -rf test_raw_videos.zip
}

#------------------------- Green Screen RGB videos - Side View -------------------------#
rgb_side_videos()
{
	mkdir -p "./How2Sign/video_level/train/rgb_side"
	mkdir -p "./How2Sign/video_level/val/rgb_side"
	mkdir -p "./How2Sign/video_level/test/rgb_side"

	echo "***** Downloading Green Screen RGB videos (Side View)... This might take a while! *****"

	## Train
	### train_side_raw_videos.z01
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Rmf6LfNWn6lWkAz6Iuj5pMOI2I5p4j1U' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Rmf6LfNWn6lWkAz6Iuj5pMOI2I5p4j1U" -O train_side_raw_videos.z01 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z02
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1FytIYIRYrBgAeNWIAhO5vnI2mYOvYC9i' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1FytIYIRYrBgAeNWIAhO5vnI2mYOvYC9i" -O train_side_raw_videos.z02 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z03
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kC24jgNgjYYiIYhCRE-gGR28H_2xBBbP' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1kC24jgNgjYYiIYhCRE-gGR28H_2xBBbP" -O train_side_raw_videos.z03 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z04
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1JunkM-ImFYao_MwDW9zeqe-6Th6rOLhR' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1JunkM-ImFYao_MwDW9zeqe-6Th6rOLhR" -O train_side_raw_videos.z04 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z05
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-vMckelz9fy4GVNYXRCcy7cJ12X4P3KZ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1-vMckelz9fy4GVNYXRCcy7cJ12X4P3KZ" -O train_side_raw_videos.z05 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z06
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1uV413eKsihkNzquN2bwtIQG-OZZMz6sh' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1uV413eKsihkNzquN2bwtIQG-OZZMz6sh" -O train_side_raw_videos.z06 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z07
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1sU8xrneFJHBzT_PFz4iRPqI8A7HGilhW' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1sU8xrneFJHBzT_PFz4iRPqI8A7HGilhW" -O train_side_raw_videos.z07 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z08
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1RPLxeZ54uSZUJSXdPFhXOgeIXziOwTW9' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1RPLxeZ54uSZUJSXdPFhXOgeIXziOwTW9" -O train_side_raw_videos.z08 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.z09
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1tClhr98PszBvFpo9ELKuhbTZZgTGGQqh' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1tClhr98PszBvFpo9ELKuhbTZZgTGGQqh" -O train_side_raw_videos.z09 && rm -rf /tmp/cookies.txt

	### train_side_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=10xrXWgH7iW3E6sgJZDPRwlIhIaDLfHQm' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=10xrXWgH7iW3E6sgJZDPRwlIhIaDLfHQm" -O train_side_raw_videos.zip && rm -rf /tmp/cookies.txt
	
	## Val
	### val_rgb_side_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Z2H96JT68o7eTChEXPI9z3xyx7zUJPl5' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Z2H96JT68o7eTChEXPI9z3xyx7zUJPl5" -O val_rgb_side_raw_videos.zip && rm -rf /tmp/cookies.txt

	## Test
	### test_rgb_side_raw_videos.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1tCQ8KIuuiirXHsh29w0XAMNB3HLIGqgA' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1tCQ8KIuuiirXHsh29w0XAMNB3HLIGqgA" -O test_rgb_side_raw_videos.zip && rm -rf /tmp/cookies.txt

	# Merge all train zip files
	echo "***** Preparing the downloaded files... this might take some time! *****"
	cat train_side_raw_videos.z* > train_side_raw_videos.zip
	
	unzip train_side_raw_videos.zip -d ./How2Sign/video_level/train/rgb_side && rm -rf train_side_raw_videos.zip
	unzip val_rgb_side_raw_videos.zip   -d ./How2Sign/video_level/val/rgb_side && rm -rf val_rgb_side_raw_videos.zip
	unzip test_rgb_side_raw_videos.zip  -d ./How2Sign/video_level/test/rgb_side && rm -rf test_rgb_side_raw_videos.zip
}

#------------------------- Green Screen RGB clips -- Frontal view -------------------------#
rgb_front_clips()
{
	mkdir -p "./How2Sign/sentence_level/train/rgb_front"
	mkdir -p "./How2Sign/sentence_level/val/rgb_front"
	mkdir -p "./How2Sign/sentence_level/test/rgb_front"

	echo "***** Downloading and preparing the Green Screen RGB clips (Frontal view) videos *****"

	## Train
	### train_rgb_front_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1dYey1F_SeHets-UO8F9cE3VMhRBO-6e0' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1dYey1F_SeHets-UO8F9cE3VMhRBO-6e0" -O train_rgb_front_clips.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_rgb_front_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1oVZyTWhHShyqshC2kUrfWnBF8apIR7Z1' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1oVZyTWhHShyqshC2kUrfWnBF8apIR7Z1" -O val_rgb_front_clips.zip && rm -rf /tmp/cookies.txt


	## Test
	### test_rgb_front_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1d6GHqu0_8IGiKbu3sTZHtMb0DGhbHSMu' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1d6GHqu0_8IGiKbu3sTZHtMb0DGhbHSMu" -O test_rgb_front_clips.zip && rm -rf /tmp/cookies.txt

	unzip train_rgb_front_clips.zip -d ./How2Sign/sentence_level/train/rgb_front && rm -rf train_rgb_front_clips.zip
	unzip val_rgb_front_clips.zip   -d ./How2Sign/sentence_level/val/rgb_front && rm -rf val_rgb_front_clips.zip
	unzip test_rgb_front_clips.zip  -d ./How2Sign/sentence_level/test/rgb_front && rm -rf test_rgb_front_clips.zip
}

#-------------------------  Green Screen RGB clips -- Side view -------------------------#
rgb_side_clips()
{
	mkdir -p "./How2Sign/sentence_level/train/rgb_side"
	mkdir -p "./How2Sign/sentence_level/val/rgb_side"
	mkdir -p "./How2Sign/sentence_level/test/rgb_side"

	echo "***** Downloading and preparing the Green Screen RGB clips (Side view) videos *****"

	## Train
	### train_rgb_side_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1PIYIIOxR2vnUDzSHdq3uyoUCoIJvsuNW' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1PIYIIOxR2vnUDzSHdq3uyoUCoIJvsuNW" -O train_rgb_side_clips.zip && rm -rf /tmp/cookies.txt

	## Val
	### val_rgb_side_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1vJVV777_bmSeA2_k7iGdZu2izooeKUrq' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1vJVV777_bmSeA2_k7iGdZu2izooeKUrq" -O val_rgb_side_clips.zip && rm -rf /tmp/cookies.txt

	## Test
	### test_rgb_side_clips.zip
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1gKV_TloCbMyMhOdYvr_a-6I-PTf0Sjyi' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1gKV_TloCbMyMhOdYvr_a-6I-PTf0Sjyi" -O test_rgb_side_clips.zip && rm -rf /tmp/cookies.txt


	unzip train_rgb_side_clips.zip -d ./How2Sign/sentence_level/train/rgb_side && rm -rf train_rgb_side_clips.zip
	unzip val_rgb_side_clips.zip   -d ./How2Sign/sentence_level/val/rgb_side && rm -rf val_rgb_side_clips.zip
	unzip test_rgb_side_clips.zip  -d ./How2Sign/sentence_level/test/rgb_side && rm -rf test_rgb_side_clips.zip
}

#------------------------- B-F-H 2D Keypoints clips -- Frontal view -------------------------#
rgb_front_2D_keypoints()
{
	mkdir -p "./How2Sign/sentence_level/train/rgb_front/features"
	mkdir -p "./How2Sign/sentence_level/val/rgb_front/features"
	mkdir -p "./How2Sign/sentence_level/test/rgb_front/features"

	echo "***** Downloading B-F-H 2D Keypoints clips (Frontal view) files... This might take a while! *****"
	## Train
	### train_2D_keypoints.tar.gz
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1lnsDN-LxcsroOmetdG5_sXYXZ7setlS4' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1lnsDN-LxcsroOmetdG5_sXYXZ7setlS4" -O train_2D_keypoints.tar.gz && rm -rf /tmp/cookies.txt

	## Val
	### val_2D_keypoints.tar.gz
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1aOhRknNWj8APdxHmwJdQrMo5xuIGNXxM' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1aOhRknNWj8APdxHmwJdQrMo5xuIGNXxM" -O val_2D_keypoints.tar.gz && rm -rf /tmp/cookies.txt

	## Test
	### test_2D_keypoints.tar.gz
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1quj8Ipm56pH65KAKK3Pc-sqZ0ozw2gSe' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1quj8Ipm56pH65KAKK3Pc-sqZ0ozw2gSe" -O test_2D_keypoints.tar.gz && rm -rf /tmp/cookies.txt

	echo "***** Preparing the downloaded files... this might take some time! *****"
	tar -xf train_2D_keypoints.tar.gz -C ./How2Sign/sentence_level/train/rgb_front/features && rm -rf train_2D_keypoints.tar.gz
	tar -xf val_2D_keypoints.tar.gz   -C ./How2Sign/sentence_level/val/rgb_front/features && rm -rf val_2D_keypoints.tar.gz
	tar -xf test_2D_keypoints.tar.gz  -C ./How2Sign/sentence_level/test/rgb_front/features && rm -rf test_2D_keypoints.tar.gz
}

# # B-F-H 2D Keypoints clips -- Side view
# rgb_side_2D_keypoints()
# {
# 	echo "Creating B-F-H 2D Keypoints clips -- Side view folders"
# 	mkdir -p "./How2Sign/sentence_level/train/rgb_side/features/openpose_output"
# 	mkdir -p "./How2Sign/sentence_level/val/rgb_side/features/openpose_output"
# 	mkdir -p "./How2Sign/sentence_level/test/rgb_side/features/openpose_output"

# 	unzip train_rgb_side_2D_keypoints.zip -d ./How2Sign/sentence_level/train/rgb_side/features
# 	unzip val_rgb_side_2D_keypoints.zip   -d ./How2Sign/sentence_level/val/rgb_side/features
# 	unzip test_rgb_side_2D_keypoints.zip  -d ./How2Sign/sentence_level/test/rgb_side/features
# }

#------------------------- English Translation -------------------------#
english_translation()
{
	mkdir -p "./How2Sign/sentence_level/train/text/en/raw_text"
	mkdir -p "./How2Sign/sentence_level/val/text/en/raw_text"
	mkdir -p "./How2Sign/sentence_level/test/text/en/raw_text"

	echo "***** Downloading and preparing the English Translation text files *****"
	## Train
	### how2sign_train.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kE10vaZh_LQvZtBvT-jxT5nR9DXU6H7N' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1kE10vaZh_LQvZtBvT-jxT5nR9DXU6H7N" -O  how2sign_train.csv && rm -rf /tmp/cookies.txt

	## Val
	### how2sign_val.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=12xVToQ2vm6pnXbgTyk2VqfnIxrMsORF1' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=12xVToQ2vm6pnXbgTyk2VqfnIxrMsORF1" -O  how2sign_val.csv && rm -rf /tmp/cookies.txt

	## Test
	### how2sign_test.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1B6WVb3Mtwof3mx3Pnf-UOOyXRpFaT9Hw' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1B6WVb3Mtwof3mx3Pnf-UOOyXRpFaT9Hw" -O  how2sign_test.csv && rm -rf /tmp/cookies.txt

	mv how2sign_train.csv How2Sign/sentence_level/train/text/en/raw_text
	mv how2sign_val.csv How2Sign/sentence_level/val/text/en/raw_text
	mv how2sign_test.csv How2Sign/sentence_level/test/text/en/raw_text
}

#------------------------- English Translation re-aligned -------------------------#
english_translation_re-aligned()
{
	mkdir -p "./How2Sign/sentence_level/train/text/en/raw_text/re_aligned"
	mkdir -p "./How2Sign/sentence_level/val/text/en/raw_text/re_aligned"
	mkdir -p "./How2Sign/sentence_level/test/text/en/raw_text/re_aligned"

	echo "***** Downloading and preparing the re-aligned English Translation text files *****"
	## Train
	### how2sign_realigned_train.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1BWt2ASmOIUM8tWnCuRtl9AdQsp4zsjPN' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1BWt2ASmOIUM8tWnCuRtl9AdQsp4zsjPN" -O  how2sign_realigned_train.csv && rm -rf /tmp/cookies.txt

	## Val
	### how2sign_realigned_val.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1hcPqXfHIHHGHUQYfT3eFARTIgi0M1C9_' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1hcPqXfHIHHGHUQYfT3eFARTIgi0M1C9_" -O  how2sign_realigned_val.csv && rm -rf /tmp/cookies.txt

	## Test
	### how2sign_realigned_test.csv
	wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OsTvMsVFOMk54r65v2gcxOottV41ZEUo' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1OsTvMsVFOMk54r65v2gcxOottV41ZEUo" -O  how2sign_realigned_test.csv && rm -rf /tmp/cookies.txt

	mv how2sign_realigned_train.csv How2Sign/sentence_level/train/text/en/raw_text/re_aligned
	mv how2sign_realigned_val.csv How2Sign/sentence_level/val/text/en/raw_text/re_aligned
	mv how2sign_realigned_test.csv How2Sign/sentence_level/test/text/en/raw_text/re_aligned
}

## TODO
# Gloss annotations
# Panoptic Studio data

# Modalities avaliable for download
for ARG in "$@"
do
	shift
	case "${ARG}" in
		"rgb_front_videos") 		rgb_front_videos;;
		"rgb_side_videos")		rgb_side_videos;;
		"rgb_front_clips")		rgb_front_clips;;
		"rgb_side_clips")		rgb_side_clips;;
		"rgb_front_2D_keypoints")	rgb_front_2D_keypoints;;
		# "rgb_side_2D_keypoints")	rgb_side_2D_keypoints;;
		"english_translation")	english_translation;;
		"english_translation_re-aligned")	english_translation_re-aligned;;
		*)				echo "${ARG}: Invalid argument given";;
	esac
	echo "Thank you for downloading the How2Sign dataset. Please check the README file for information about the files you just downloaded and feel free to contact us if you have any questions."
done
#
################################################################################
