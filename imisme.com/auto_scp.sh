#/bin/bash
echo "开始"
hexo generate
tar -zcvf public.tar.gz public/
scp public.tar.gz root@115.28.177.151:/usr/share/nginx/html/imisme.com/
ssh root@115.28.177.151 `cd /usr/share/nginx/html/imisme.com/`
`ls`
`rm -Rf public/`
`tar -zxvf public.tar.gz` 
`ls`
