# QuizSphere | Ignite Your Knowledge

QuizSphere is a high-fidelity, gamified Single Page Application (SPA) built for students, professionals, and trivia enthusiasts. It utilizes a gorgeous midnight-blue aesthetic with neon-glow highlights, glassmorphism containers, dynamic CSS animations, and interactive audio feedback.

---

## Key Features

1. **Stunning Landing Page**:
   - Implements curated gradients (`from-primary via-secondary to-tertiary`), parallax background glow movements on mouse moves, and floating visual panels.
   - Includes a high-fidelity bento grid of platform features, pricing tiers, client testimonials, and interactive action triggers.
2. **Client-side Router & State**:
   - Zero-latency view-swapping (`Landing`, `Login/Register`, `Dashboard`, `Active Quiz Player`, `Creator Studio`, `Analytics Hub`).
   - Keeps states (such as active user profiles, experience points, level progression, and quiz attempt histories) alive and synced across pages.
3. **Simulated Authentication & Persistence**:
   - Supports username/email sign-up and password toggles, alongside mocked single-click OAuth gateways for Google and GitHub.
   - Profile levels, accumulated XP, custom quizzes, and scores are automatically serialized and persist in `localStorage`.
4. **Gamified Quiz Player**:
   - Highlights selected options instantaneously (green for correct, red for incorrect, and auto-highlights correct answers on timeout/wrong selects).
   - Counts down using a radial circular SVG timer and a horizontal progress bar.
   - Spawns canvas-based particle confetti showers upon quiz completion.
5. **Interactive Web Audio Synthesizer**:
   - Synthesizes click plucks, double-note chimes on correct choices, deep sub-bass buzzes on incorrect choices, and arpeggiated triumph chimes on quiz finishes. No external `.mp3` assets required.
6. **Creator Studio**:
   - Allows users to design custom multiple-choice quizzes with custom question prompts, 4 answer options, correct option selector, and adjustable time limits (10s to 30s).
   - Saved custom quizzes immediately populate the player dashboard.
7. **Performance Analytics Dashboard**:
   - Renders a custom pentagonal Radar Chart mapping accuracy scores across categories (Technology, Science, History, Geography, Other).
   - Maps daily responses in a GitHub-inspired cognitive streak mapping grid of correct, incorrect, and unplayed question slots.

---

## File Structure

- [index.html](file:///c:/Users/sainy/OneDrive/Desktop/quiz/index.html): Skeleton structure containing styling, Tailwind configuration, inline glassmorphic styles, and layout elements for all SPA views.
- [app.js](file:///c:/Users/sainy/OneDrive/Desktop/quiz/app.js): Core script file managing the SPA router, user levels/stats progression, local storage bindings, quiz loops, the Web Audio synth, and custom Canvas chart rendering.

---

## Running Locally

Since the application is built entirely on native Web technologies, it can be run in two ways:

1. **Double Click / Direct Open**:
   - Open [index.html](file:///c:/Users/sainy/OneDrive/Desktop/quiz/index.html) directly in any modern web browser.
   - *Note*: Chrome and modern browsers block sound playback until the user interacts with the page (e.g. clicks anywhere). The application initializes audio context lazily on first click.

2. **Local HTTP Server (Recommended)**:
   - Run a static file server in the project directory using Node:
     ```bash
     npx http-server ./
     ```
   - Navigate to `http://localhost:8080/index.html` in your browser.
