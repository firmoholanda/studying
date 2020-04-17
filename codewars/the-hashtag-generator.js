// https://www.codewars.com/kata/52449b062fb80683ec000024/train/javascript

function generateHashtag(str) {
  
  hashTag = "#"

  str.split(" ").forEach(function (i) {    
    hashTag += (i.charAt(0).toUpperCase() + i.slice(1))
  })

  if ((hashTag.length == 1) || (hashTag.length > 140)) {return false}
  return hashTag

}
// ------------------------------------------------------------------------------------- #

generateHashtag("do we have a hashtag")
// #DoWeHaveAHashtag
