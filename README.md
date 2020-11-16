# hub-mirror

Based on [this action](https://github.com/Yikun/hub-mirror-action)

### Feature
* add dst repo prefix and suffix.

### Description
name_changed (default: false) if set true, rename dst repo function on  
prefix_name (default: '') only work if name_changed is true, when prefix_name is empty, prefix_name will be src repo's username  
suffix_name (default: '') only work if name_changed is true, when prefix_name is empty, no suffix_name added  

seperator is _, final format is prefix_repo_suffix.
