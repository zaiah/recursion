
recursion=/home/zaiah/projects/recursion {
 DEPENDENCIES
 README.md
 bash-recursion.sh
 bash-descent.sh
 r.vim
 docs=docs {
 }
}

recursion-site=/home/zaiah/www/recursion {
 data=data {
  apache.vhost
  definitions.lua
  apps=apps {
   hello.lua
  }
  auth=auth {
  }
  local=local {
   dbschema
  }
  src=src {
  }
  static=static {
   blog.lua
  }
  templates=templates {
   blog.tpl
   error.tpl
   hello.tpl
  }
 }
 db=db {
  recursion.db
  sql=sql {
  }
 }
 interface=interface {
  CHANGES.md
  README.md
  VERSION
  debugger.lua
  error.lua
  index.lua
  cli=cli {
   logic.lua
   options.lua
  }
  ds=ds {
   content.lua
   datatypes.lua
   db.lua
   log.lua
   mapper.lua
   query.lua
   serialization.lua
   datatypes=datatypes {
    empty
   }
   db=db {
    empty
   }
   querying=querying {
    empty
   }
   serialization=serialization {
    empty
   }
  }
  err=err {
   die.lua
  }
  extension=extension {
   arg.lua
   date.lua
   on.spec
   os.lua
   require.lua
   shuffler.lua
   strings.lua
   tables.lua
   tests.lua
   uuid.lua
   date=date {
    empty
    format.lua
    pad.lua
   }
   os=os {
    empty
    os.lua
   }
   random=random {
    empty
   }
   string=string {
    empty
   }
   table=table {
    empty
   }
   tests=tests {
    empty
   }
  }
  file=file {
   add.lua
   file.lua
   interpret.lua
  }
  handlers=handlers {
   cgi-2.lua
   cgi.lua
   cli.lua
   fcgi.lua
   wsapi.lua
  }
  http=http {
   autobind.spec
   content-types.lua
   cookie.lua
   eval.lua
   eval.spec
   eval2.lua
   eval3.lua
   eval3_.lua
   get.lua
   headers.lua
   html.lua
   post.lua
   response.lua
   status.lua
   xmlhttp.lua
   cookies=cookies {
    empty
   }
   eval=eval {
    empty
   }
   markup=markup {
    empty
   }
   request=request {
    empty
   }
   response=response {
    empty
   }
   xmlhttp=xmlhttp {
    empty
   }
  }
  i18n=i18n {
   locale.lua
  }
  os=os {
   busy
  }
  template=template {
   render.lua
  }
 }
 log=log {
  srv_access.log
  srv_error.log
 }
 public=public {
  assets=assets {
  }
  html=html {
   example=example {
    example-resources.html
    example.html
    footer.html
   }
  }
  img=img {
  }
  js=js {
   kirk=kirk {
   }
  }
  styles=styles {
   default=default {
    error.css
    example.css
    zero.css
   }
  }
 }
 skel=skel {
  delete.lua
  example.lua
  main.lua
 }
}
