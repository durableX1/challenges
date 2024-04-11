import random
import os
import keyboard
import time

class CoinCatcher:
    def __init__(self, width=20, num_coins=10):
        self.width = width
        self.num_coins = num_coins
        self.player_pos = width // 2
        self.coins = []

    def generate_coin(self):
        return random.randint(0, self.width - 1)

    def move_player(self, direction):
        if direction == 'left':
            self.player_pos = max(0, self.player_pos - 1)
        elif direction == 'right':
            self.player_pos = min(self.width - 1, self.player_pos + 1)

    def display(self):
        os.system('cls' if os.name == 'nt' else 'clear')
        print(''.join(['^' if i == self.player_pos else ' ' for i in range(self.width)]))
        print('-' * self.width)
        print('Score:', len(self.coins))

    def play(self):
        for _ in range(self.num_coins):
            self.coins.append(self.generate_coin())
            self.display()
            time.sleep(0.5)

            # Move player
            if keyboard.is_pressed('a'):
                self.move_player('left')
            elif keyboard.is_pressed('d'):
                self.move_player('right')

            # Check for collision
            if self.player_pos in self.coins:
                self.coins.remove(self.player_pos)

        self.display()
        print("Game Over! You caught", len(self.coins), "coins.")

if __name__ == "__main__":
    game = CoinCatcher()
    game.play()
