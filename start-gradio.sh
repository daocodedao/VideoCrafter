#!/bin/bash

. colors.sh

echo "${YELLOW}source venv_video_crafter/bin/activate${NOCOLOR}"
source venv_video_crafter/bin/activate

# workdir=demo/realtime-txt2img
# cd $workdir


jobName=gradio_app.py 
echo "${YELLOW}check $jobName pid${NOCOLOR}"
echo "ps aux | grep "$jobName" | grep -v grep "
TAILPID=`ps aux | grep "$jobName" | grep -v grep`
if [[ "0$TAILPID" != "0" ]]; then
echo "${RED}kill process $TAILPID${NOCOLOR}"
sudo kill -9 $TAILPID
fi


echo -e "${YELLOW}python $jobName ${NOCOLOR}"

nohup python $jobName > /dev/null 2>&1 &
