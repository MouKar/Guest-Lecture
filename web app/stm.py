import streamlit as st

# Title and description
st.title("My Streamlit App")
st.write("This is a simple Streamlit app.")
name = st.text_input("Enter your name:")

# Print the entered name
st.write("Hello, " + name + "!")

