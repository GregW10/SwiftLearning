var shite: () -> Void = {};

func takeShit(closure: @escaping () -> Void) {
    shite = closure;
}

takeShit(closure: {print("Called.\n")});
shite();
