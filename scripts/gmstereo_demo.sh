#!/usr/bin/env bash
# gmstereo-scale2-regrefine3 model
#
#python main_stereo.py \
#  --inference_dir demo/stereo-middlebury \
#  --inference_size 1024 1536 \
#  --output_path output/gmstereo-scale2-regrefine3-middlebury \
#  --resume pretrained/gmstereo-scale2-regrefine3-resumeflowthings-middleburyfthighres-a82bec03.pth \
#  --padding_factor 32 \
#  --upsample_factor 4 \
#  --num_scales 2 \
#  --attn_type self_swin2d_cross_swin1d \
#  --attn_splits_list 2 8 \
#  --corr_radius_list -1 4 \
#  --prop_radius_list -1 1 \
#  --reg_refine \
#  --num_reg_refine 3
## optionally predict both left and right disparities
##--pred_bidir_disp


#--inference_dir /home/l/project/unimatch/demo/test3 \
python main_stereo.py \
--inference_dir demo/stereo-middlebury \
--inference_dir_left /mnt/Data2/depth/depth20250102/left6 \
--inference_dir_right /mnt/Data2/depth/depth20250102/right6 \
--inference_size 480 640 \
--output_path /mnt/Data2/depth/depth20250102/result/unimatch/gmstereo-scale2-regrefine3-resumeflowthings-sceneflow-f724fee6 \
--resume pretrained/gmstereo-scale2-regrefine3-resumeflowthings-sceneflow-f724fee6.pth \
--padding_factor 32 \
--upsample_factor 4 \
--num_scales 2 \
--attn_type self_swin2d_cross_swin1d \
--attn_splits_list 2 8 \
--corr_radius_list -1 4 \
--prop_radius_list -1 1  \
--reg_refine \
--num_reg_refine 3
# --pred_bidir_disp



