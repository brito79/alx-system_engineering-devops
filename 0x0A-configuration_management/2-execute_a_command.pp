<<<<<<< HEAD
# kill process killmenow

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
=======
# Terminates the killmenow process
exec {
  'killmenow':
  command =>  '/usr/bin/pkill killmenow'
>>>>>>> 00b3190022d7b32cf1f57d15757ffea66ba0cd1a
}
