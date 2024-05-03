let
  header = ''
    ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗
    ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║
    ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║
    ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║
    ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
    ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

          git@github.com:edrobertsrayne
  '';
  footer = ''
    "I don't like it, and I'm sorry I ever had
    anything to do with it."
                            - Erwin Schrodinger
  '';
in {
  plugins.mini = {
    enable = true;
    modules.starter = {
      autoopen = true;
      inherit header footer;
    };
  };
}
