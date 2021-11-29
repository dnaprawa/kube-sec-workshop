async function getAll() {
  const apiURL = (window._env_ !== undefined && window._env_.API_URL !== undefined)
    ? window._env_.API_URL
    : "http://localhost:8080"
  const response = await fetch( `${apiURL}/services/projects` )
  const json = await response.json()
  return json.payload  
}

export default {
getAll
}