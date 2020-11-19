# hub-mirror

Github Actions for mirroring repos between Hubs (like Github and Gitee)  
Based on [this action](https://github.com/Yikun/hub-mirror-action)

### Feature
* add dst repo prefix and suffix.

### New added settings
- `rename_dst`   Rename the destination repo's name, default false  
- `prefix_dst`  Prefix_ added to the beggining of the destination repo's name, prefix will be the source repo's account if not set  
- `suffix_dst`  _Suffix added to the end of the destination repo's name  

### Sample

mirror https://github.com/baidu/amis to https://github.com/fakedon/baidu_amis  
```
- name: sync github/baidu
  uses: fakedon/hub-mirror@main
  with:
    src: github/baidu
    dst: github/fakedon
    dst_key: ${{ secrets.GITHUB_SSH_KEY }}
    dst_token: ${{ secrets.GITHUB_TOKEN }}
    static_list: "amis"
    rename_dst: true
```
