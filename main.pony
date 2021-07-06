actor Main
  new create(env: Env) =>
    env.out.print("Hello World")

    // This code of course could be in a random
    // location in the matrixapi module:

    let newenv: Env val = Env.malicious_create()

    try
      let auth: AmbientAuth = env.root as AmbientAuth
      newenv.out.print("I have AmbientAuth")
    else
      newenv.out.print("I failed to get AmbientAuth")
    end
