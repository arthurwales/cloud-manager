import { useState } from 'react'

export default function Home() {
  const [supabaseUrl, setSupabaseUrl] = useState('')
  const [apiKey, setApiKey] = useState('')

  return (
    <div style={{ padding: 40 }}>
      <h1>Cloud Manager Setup</h1>
      <p>Enter your Supabase credentials to get started:</p>
      <input
        placeholder="Supabase URL"
        value={supabaseUrl}
        onChange={e => setSupabaseUrl(e.target.value)}
        style={{ width: '100%', padding: 10 }}
      />
      <br /><br />
      <input
        placeholder="Supabase Anon Key"
        value={apiKey}
        onChange={e => setApiKey(e.target.value)}
        style={{ width: '100%', padding: 10 }}
      />
      <br /><br />
      <button onClick={() => alert('Saved (to be implemented)')}>
        Save and Start
      </button>
    </div>
  )
}
