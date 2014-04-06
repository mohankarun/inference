# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Inference::Application.config.secret_key_base = 'b3d2d0c245c05dc72ea3d92bd498dccdca8e2c1cc3bf03a47731ef506024f97a188f3063b919f2e3c79a938feb29e4ff052fa6560e9efe04a03fc411381c5f24'
