var conventionalChangelog = require('conventional-changelog');


const config = {
  transform(a) {
    console.log(a)
    return 'hello'
  }
}

conventionalChangelog({config})
  .pipe(process.stdout); // or any writable stream