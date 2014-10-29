$(document).ready(function(){
  bindEvents();
})

function bindEvents(){
  $(document).on('click', '#get-lists', function(e){
    e.preventDefault();
    $.ajax({
      type: 'GET',
      url: '/lists',
      dataType: 'json'
    }).success(function(response){
      appendLists(response)
    }).error(function(response){
      console.log('Something wicked this way comes...')
    })
  })
}

function appendLists(lists){
  for (var i = 0; i < lists.length; i++){
    var list = $("<div class='list'></div>");
    var listName = $("<h1 class='list-name'><a href='/lists/"+lists[i].id+"'>"+lists[i].name+"</a></h1>");
    list.append(listName);
    $('body').append(list);
  }
}