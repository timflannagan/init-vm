#! /usr/bin/bash

USAGE="USAGE: ./execute_report [report-namespace] [report-name] [format]"
FORMAT="$3"
REPORT_NAME="$2"
NAMESPACE="$1"

# check if METERING_NAMESPACE environment variable has been set
if [[ -z "$METERING_NAMESPACE " && -z "$1" ]];
then
  echo "Invalid usage: need to supply a reporting namespace, or set the METERING_NAMESPACE environment variable"
fi

if [ $# -eq 1 ]; then
  REPORT_NAME="$1"
  NAMESPACE="$METERING_NAMESPACE"
fi

if [[ -z "$3" ]];
then
  FORMAT="tab"
fi

CMD="curl \"http://127.0.0.1:8001/api/v1/namespaces/$NAMESPACE/services/https:reporting-operator:http/proxy/api/v1/reports/get?name=$REPORT_NAME&namespace=$NAMESPACE&format=$FORMAT\""
eval $CMD
