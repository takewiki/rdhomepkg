#' 返回查询数据
#'
#' @param token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' docker_image_select()
docker_image_select <- function(token = '069800C1-C14D-4574-8DC8-27B2349BAFBB') {

  res <- tsda::sql_select2(token = token,sql = "select * from  t_docker_image
order by FImageName,FVersion,FEntryPoint")

  return(res)
}

