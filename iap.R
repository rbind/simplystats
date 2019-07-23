
iap_relate = function(observed, 
                      predicted,
                      type=c("reg","class")){
  
  type = match.arg(type)
  
  if(type=="reg"){
    rel_mod = mgcv::gam(observed ~ s(predicted), select=TRUE )
    return(rel_mod)
  }else{
    nclass = ncol(predicted)
    vars = paste0("s(",colnames(predicted)[1:(nclass-1)],")",collapse="+")
    pred_df = cbind(observed, predicted) %>%
      as_tibble() 
    pred_df$observed = as.numeric(pred_df$observed) - 1

    
    flist = vector(mode="list",nclass)
    flist[[1]] = as.formula(paste0("observed ~ ",vars ))
    for(i in 2:nclass)
      flist[[i]] = as.formula(paste0("~",vars ))
    
    rel_mod = gam(flist,family=multinom(K=nclass),data=pred_df)
    return(rel_mod)
  }
  
}

 
 iap_relate = function(df,
                       observed,
                       predicted,
                       type=c("reg","class")){
   
  type = match.arg(type)
 
  obs = deparse(substitute(observed))
  pred = deparse(substitute(predicted))
   
  quo_pred = enquo(predicted)
  quo_obs = enquo(observed)
 
   if(type=="reg"){
    rel_mod = mgcv::gam(as.formula(paste0(obs, "~s(", pred,")")),
                         data=df, select=TRUE )
     return(rel_mod)
   } else {
     
     pred_dat = df %>%
        select(!! quo_obs, !! quo_pred) %>%
        mutate(new_obs = as.numeric(!! quo_obs) - 1) 
    
     nclass = pred_dat %>% select(!! quo_pred) %>% ncol()
     
     flist = vector(mode="list",nclass)
          flist[[1]] = as.formula(paste0("observed ~ ",vars ))
     #     for(i in 2:nclass)
     #       flist[[i]] = as.formula(paste0("~",vars ))
     
     
     
     
     
     return(pred_dat)
     
   }
}
#     
#     pred_dat = df %>%
#       select(!! quo_obs, !! quo_pred) %>%
#       mutate(new_obs = as.numeric(!! quo_obs) - 1) 
#     
#     flist = vector(mode="list",nclass)
#     flist[[1]] = as.formula(paste0("observed ~ ",vars ))
#     for(i in 2:nclass)
#       flist[[i]] = as.formula(paste0("~",vars ))
#     
#     rel_mod = gam(flist,family=multinom(K=nclass))
#    
#   }
# }  
#   
# 
