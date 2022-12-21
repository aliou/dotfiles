// const log = (...args) => console.log('[boooost]', ...args)

if (window.location.host === "www.reddit.com") {
  const nextUrl = `https://old.reddit.com${window.location.pathname}`
  window.location = nextUrl;
}