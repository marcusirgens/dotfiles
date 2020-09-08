_xdebug_mod_prepare () {
  if [ ! -d "$php74_ini_dir" ]; then
    >&2 echo "Invalid config directory for PHP ($php74_ini_dir)"
    return 1
  fi;

  if [ ! -f "$xdebug_conf" ]; then
    >&2 echo "xdebug config file not found ($xdebug_conf)"
    return 1
  fi
}

xdebug-disable () {
  local php74_ini_dir="/usr/local/etc/php/7.4/conf.d/"
  local php74_link_target="$php74_ini_dir/ext-xdebug.ini"
  local xdebug_conf="/usr/local/etc/php/conf-available/xdebug.ini"

  if ! _xdebug_mod_prepare; then
    return 1;
  fi

  if [ -f "$php74_link_target" ]; then
    rm "$php74_link_target"
  fi
}

xdebug-enable () {
  local php74_ini_dir="/usr/local/etc/php/7.4/conf.d/"
  local php74_link_target="$php74_ini_dir/ext-xdebug.ini"
  local xdebug_conf="/usr/local/etc/php/conf-available/xdebug.ini"

  if ! _xdebug_mod_prepare; then
    return 1;
  fi

  if ! xdebug-disable; then
    return 1;
  fi;

  ln -s "$xdebug_conf" "$php74_link_target"
}