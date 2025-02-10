test_empty() {
  return 0
}

add_line_uniq() {
  local path_to_file="$1"
  local line="$2"

  # Проверка наличия строки в файле
  if ! grep -Fxq "$line" "$path_to_file"; then
    echo "$line" >> "$path_to_file"
  fi
}

create_file_if_not_exist() {
  local path_to_file="$1"

  # Проверяем, существует ли файл
  if [ ! -f "$path_to_file" ]; then
     touch "$path_to_file"
  fi
}