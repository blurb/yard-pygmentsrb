
# we need to override this get our assets generated in the guide template
def generate_assets
  super

  asset('css/pygments.css', erb(:pygments))
end