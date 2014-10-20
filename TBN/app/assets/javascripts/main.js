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
      console.log(response)
    }).error(function(response){
      console.log('Something wicked this way comes...')
    })
  })
}