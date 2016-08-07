$(document).ready(function(){
  loadtweets(id_club);
});
function loadtweets(id_club){
  var url='../api/tweets/'+id_club+'/all';

  $.ajax({
    url: url,
    beforeSend: function(){console.log('carregando')},
    success: function(data){
      console.log(data);
      $('.feed').empty();
      for(var i=0;i< data.data.tweets.length;i++){
        console.log(data.data.tweets[i]);
        if(data.data.tweets[i].retweeted_club!=undefined){
          $('.feed').append("<div onclick='opentweet("+data.data.tweets[i].id_tweet+")' class='tweet'><div class='tweet-content'><div class='club-logo'><img width='75px' height='75px' src='../assets/img/logos/"+data.data.tweets[i].club_logo+"'></div><div class='tweet2'><div class='tweet-info'>"+data.data.tweets[i].clubname+" <span class='action'>retweetd </span>"+data.data.tweets[i].retweeted_club+" - <span class='date'>3h</span></div><div class='tweet-text'>"+data.data.tweets[i].retweet_content+"</div></div></div><div class='tweet-options'><button type='button' class='btn-tweet btn no-bg no-hover black-text'><span class='reply'></span></button><button type='button' class='btn-tweet btn no-bg no-hover white-text'><span class='like'></span></button></div>");
          if(id_club==data.data.tweets[i].id_club){
            $('.tweet:last-child .tweet-options').append("<button type='button' class='btn-tweet btn no-bg no-hover white-text'><span class='retweet2'></span></button>");
          }
        }else{
          $('.feed').append("<div onclick='opentweet("+data.data.tweets[i].id_tweet+")' class='tweet'><div class='tweet-content'><div class='club-logo'><img width='75px' height='75px' src='../assets/img/logos/"+data.data.tweets[i].club_logo+"'></div><div class='tweet2'><div class='tweet-info'>"+data.data.tweets[i].clubname+" - <span class='date'>3h</span></div><div class='tweet-text'>"+data.data.tweets[i].tweet+"</div></div></div><div class='tweet-options'><button type='button' class='btn-tweet btn no-bg no-hover black-text'><span class='reply'></span></button><button type='button' class='btn-tweet btn no-bg no-hover white-text'><span class='like'></span></button></div></div>");
          if(id_club==data.data.tweets[i].id_club){
            $('.tweet:last-child .tweet-options').append("<button type='button' class='btn-tweet btn no-bg no-hover white-text'><span class='delete'></span></button>");
          }else{
            $('.tweet:last-child .tweet-options').append("<button type='button' class='btn-tweet btn no-bg no-hover white-text'><span class='retweet'></span></button>");
          }
        }
      }
    },
    error: function(data){console.log(data);$('.loading').html('Houve um erro ao carregar.');}
  })
}

function tweetaction(action,tweet){
  $.ajax({

  });
}

function opentweet(id_tweet){
  var url='../api/tweet/'+id_tweet;

  $.ajax({
    url: url,
    success: function(data){
      $('.modal-tweet .modal-content').empty();
      $('.modal-tweet .modal-content').html(data.data.clubname);
      $('#modal_tweet').prop("checked",true);
    }
  });

}