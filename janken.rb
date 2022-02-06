puts "じゃんけん..."

def janken
  puts "[0]グー,[1]チョキ,[2]パー"
 
  player_hands = gets.to_i
  cpu_hands = rand(3)
  puts "ポン！"
  
  jankens = ["グー","チョキ","パー"]
  puts "----------"
  puts "あなたは#{jankens[player_hands]}を出しました"
  puts "相手は#{jankens[cpu_hands]}を出しました"
  puts "----------"

  if player_hands < 0 || player_hands > 2 
    puts "[0],[1],[2]で選択してください"
    puts "----------"
    return true
  
  elsif player_hands == cpu_hands
    puts "あいこで..."
    return true

  elsif player_hands == 0 && cpu_hands == 1 ||
    player_hands == 1 && cpu_hands == 2 ||
    player_hands == 2 && cpu_hands == 0
    puts "あっち向いて..."
    puts "[0]上,[1]右,[2]下,[3]左"
      
    player_fingers = gets.to_i
    cpu_faces = rand(4)
    puts "ホイ！"
      
    directions = ["上","右","下","左"]
    puts "----------"
    puts "あなたは#{directions[player_fingers]}を指しました"
    puts "相手は#{directions[cpu_faces]}を向きました"
    puts "----------"
      
    if player_fingers == cpu_faces
      puts "あなたの勝ちです！！"
      puts "----------"
      puts "----------"
      return true

    else
      puts "じゃんけん..."
      return true
    end
  
  else
    puts "あっち向いて..."
    puts "[0]上,[1]右,[2]下,[3]左"
      
    player_faces = gets.to_i
    cpu_fingers = rand(4)
    puts "ホイ！"
      
    directions = ["上","右","下","左"]
    puts "----------"
    puts "あなたは#{directions[player_faces]}を向きました"
    puts "相手は#{directions[cpu_fingers]}を指しました"
    puts "----------"
      
    if player_faces == cpu_fingers
      puts "あなたの負けです...。"
      puts "----------"
      puts "----------"
      return true
    
    else
      puts "じゃんけん..."
      return true
    end
  end
end

next_game = true

while next_game
  next_game = janken
end