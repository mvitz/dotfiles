function jdk --description 'Switches between different jdks'

  set jdk_version "1.$argv[1]"
  set jdk_home (/usr/libexec/java_home -v $jdk_version ^ /dev/null)

  if  test $status -ne 0
    echo "No jdk for version '$jdk_version' found." >&2
    echo "Current jdk: '$JAVA_HOME'" >&2
    return 1
  end

  set -xg JAVA_HOME $jdk_home
  return 0

end
