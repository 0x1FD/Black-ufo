
console(){
  echo "[console] command found!"
  msfconsole
}

payloads(){
  echo "[payloads] command found!"
  bash payloadmaker.sh 
}

exit(){
  exit 0
}

info(){
  echo '
  Black-ufo framework
  version: 0.0.0.1
  Created by: Oak atsume/rootuser669/user951
  '
}

scanner(){
  $import scan.sh 
  echo "$scanlist"
 
}
