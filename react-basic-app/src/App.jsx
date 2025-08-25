import { useState } from 'react'
import './App.css'

function App() {
  const [likes, setLikes] = useState(0)

  return (
    <div className="app-container">
      <header>
        <h1>🚀 Sample Application node.js for test EKS AWS</h1>
        <p>Fast, modern, and built by Vinícius Hemming 🪐</p>
      </header>

      <main>
        <button className="action-btn" onClick={() => setLikes(likes + 1)}>
          👍 Like ({likes})
        </button>

        <p className="description">
          This project demonstrates a complete infrastructure and deployment pipeline for a simple Python application using Terraform and GitHub Actions. The project is structured into three main pillars: the Python App, Terraform configurations, and CI/CD workflows.
        </p>
        <p style={{ textAlign: "left", width: "100%", maxWidth: "500px", margin: "0 auto" }}>
          My GitHub 📚:{" "}
          <a href="https://github.com/VirtualHookStudio" target="_blank" rel="noopener noreferrer">
            https://github.com/VirtualHookStudio
          </a>
        </p>
          
        <p style={{ textAlign: "left", width: "100%", maxWidth: "500px", margin: "0 auto" }}>
          My Linkedin 💼:{" "}
          <a href="https://www.linkedin.com/in/vinícius-hemming-a5781a206" target="_blank" rel="noopener noreferrer">
            www.linkedin.com/in/vinícius-hemming-a5781a206
          </a>
        </p>
      </main>
    </div>
  )
}

export default App
