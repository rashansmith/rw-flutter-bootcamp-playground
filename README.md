# rw-flutter-bootcamp-playground

## Homework 3

### Assignment 1
![hw3-giphy](https://user-images.githubusercontent.com/6632748/192318119-bb60d709-8931-4bd8-898d-2601bc8664a7.gif)
Link to hw3 file: https://github.com/rashansmith/rw-flutter-bootcamp-playground/blob/main/lib/hw3/hw3.dart

- Notes
  - Having an issue with the logic, as hamsandwich is always chosen for some reason  

### Assignment 2
![pokemon-battle](https://user-images.githubusercontent.com/6632748/192386098-da0bb5ef-98ba-468b-9a20-c961012c5277.gif)
Link to assignment file: https://github.com/rashansmith/rw-flutter-bootcamp-playground/blob/main/lib/hw3/pokemon.dart

  
## Homework 2

<img width="891" alt="Screen Shot 2022-08-28 at 11 59 28 PM" src="https://user-images.githubusercontent.com/6632748/187120507-aa340cfc-b702-4ebd-ba7d-3375c346d79c.png">

<img width="928" alt="Screen Shot 2022-08-29 at 12 00 02 AM" src="https://user-images.githubusercontent.com/6632748/187120533-2d9d5994-24d3-4ff8-9484-c76ba7e971ce.png">

<img width="1019" alt="Screen Shot 2022-08-29 at 12 00 43 AM" src="https://user-images.githubusercontent.com/6632748/187120552-1cf09437-8dfc-4b07-9b2c-a81364ed15e3.png">

<img width="1126" alt="Screen Shot 2022-08-28 at 11 58 41 PM" src="https://user-images.githubusercontent.com/6632748/187120853-06f154cf-a360-470e-a7df-557e77bd6116.png">


## Notes:
- How to add dart editor to vim:
  1. Download vim-plugin  to .vim/autoload directory 
    ``` curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```
  2. Edit .vimrc to add dart syntax plugin
  ```
  call plug#begin()
  Plug 'dart-lang/dart-vim-plugin'
  call plug#end()
  :PlugInstall
   ```
   3. Restart terminal
   4. Remove ```:PlugInstall``` from .vimrc
   
![vim-flutter-demo](https://user-images.githubusercontent.com/6632748/187122848-e3f85831-bcb4-4d80-91f2-0e755e40a5a7.gif)



