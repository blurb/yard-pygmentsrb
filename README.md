# yard-pygmentsrb

_This gems borrows code from nex3's [yard-pygments](https://github.com/nex3/yard-pygments)_

**yard-pygmentsrb** enables the nice Pygments syntax highlighting in [YARD](http://yardoc.org),
through [pygments.rb](https://github.com/tmm1/pygments.rb).

## Usage

Install the gem

```sh
gem install yard-pygmentsrb
```

Write some code blocks in your documentation

```
    !!!python
    def __call__(self, mom):
        pass
```

Tell YARD to generate docs using the plugin

```sh
yard --plugin pygmentsrb
```

_And if you want YARD to always use it, write the `--plugin pygmentsrb` line to your
`.yardopts` file_

## Requirements

None.

Obviously this gem requires YARD and pygments.rb, so you should have their
requirements met.
