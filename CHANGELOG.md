# Changelog

## [1.10.0](https://github.com/catppuccin/nvim/compare/v1.9.0...v1.10.0) (2024-12-27)


### Features

* add background highlight to LSP signature help ([#771](https://github.com/catppuccin/nvim/issues/771)) ([de096dd](https://github.com/catppuccin/nvim/commit/de096dd4bc88be563617db50594b2dabe7f1bd86))
* **blink-cmp:** add integration ([#777](https://github.com/catppuccin/nvim/issues/777)) ([abceb64](https://github.com/catppuccin/nvim/commit/abceb64a223aaada38c21e744763d111e73aaf0a))
* **blink-cmp:** support `BlinkCmpLabelMatch` hl ([#802](https://github.com/catppuccin/nvim/issues/802)) ([637d99e](https://github.com/catppuccin/nvim/commit/637d99e638bc6f1efedac582f6ccab08badac0c6))
* **blink.cmp:** highlight `BlinkCmpKindCopilot` as `teal` ([#813](https://github.com/catppuccin/nvim/issues/813)) ([bd80c25](https://github.com/catppuccin/nvim/commit/bd80c256606770395b901f7c0b849517957da882))
* **copilot:** add integration ([#803](https://github.com/catppuccin/nvim/issues/803)) ([b71eacb](https://github.com/catppuccin/nvim/commit/b71eacb06842c493a490d24730f0a7c1fe82b61c))
* **render-markdown:** change code block background to `mantle` ([#774](https://github.com/catppuccin/nvim/issues/774)) ([7be452e](https://github.com/catppuccin/nvim/commit/7be452ee067978cdc8b2c5f3411f0c71ffa612b9))
* **snacks:** add integration ([#807](https://github.com/catppuccin/nvim/issues/807)) ([f8a155a](https://github.com/catppuccin/nvim/commit/f8a155ab5891c5d2fb709b7e85627f1783d5a5d9))


### Bug Fixes

* **blink-cmp:** follow `Pmenu` highlights ([#799](https://github.com/catppuccin/nvim/issues/799)) ([35d8057](https://github.com/catppuccin/nvim/commit/35d8057137af463c9f41f169539e9b190d57d269))
* **colorful-winsep:** respect transparent_background configuration ([#775](https://github.com/catppuccin/nvim/issues/775)) ([9e6ec28](https://github.com/catppuccin/nvim/commit/9e6ec281f58038e5b30ce9a8828e6f9f9d744a27))
* **dap-ui:** add colors for *NC hlgroups of UI controls ([#783](https://github.com/catppuccin/nvim/issues/783)) ([d9ee9a3](https://github.com/catppuccin/nvim/commit/d9ee9a35f46f0a2bda9a15b5a763fee4095428fd))
* **editor:** add missing background for `TabLineFill` ([#757](https://github.com/catppuccin/nvim/issues/757)) ([bfdd6b3](https://github.com/catppuccin/nvim/commit/bfdd6b3833e991fa45c3d5931ffed853dca60fab))
* **editor:** make TabLine more readable ([#760](https://github.com/catppuccin/nvim/issues/760)) ([4fd72a9](https://github.com/catppuccin/nvim/commit/4fd72a9ab64b393c2c22b168508fd244877fec96))
* **editor:** more "modern" tabline ([#776](https://github.com/catppuccin/nvim/issues/776)) ([5ea0888](https://github.com/catppuccin/nvim/commit/5ea0888e9003f1457d13685ac76f046af26a5524))
* **kitty:** respect `transparent_background` option ([#786](https://github.com/catppuccin/nvim/issues/786)) ([08efbef](https://github.com/catppuccin/nvim/commit/08efbefa415fbe8ae48799cddc6a5783d2465375))
* match fzf-lua highlights to telescope ([#812](https://github.com/catppuccin/nvim/issues/812)) ([f67b886](https://github.com/catppuccin/nvim/commit/f67b886d65a029f12ffa298701fb8f1efd89295d))
* **nvim-surround:** bg conflicts with document highlight ([#800](https://github.com/catppuccin/nvim/issues/800)) ([a4c64d7](https://github.com/catppuccin/nvim/commit/a4c64d7605f6eb95674e322bbbedfaa00aab7904))
* **syntax:** use `overlay2` for comments ([#768](https://github.com/catppuccin/nvim/issues/768)) ([147e7cf](https://github.com/catppuccin/nvim/commit/147e7cfb5b7ec05702468c332cf7e378d935abd3))


### Reverts

* fix(kitty): respect `transparent_background` option ([#794](https://github.com/catppuccin/nvim/issues/794)) ([65bf0b1](https://github.com/catppuccin/nvim/commit/65bf0b16f57a3db70d6a93ac68882dd9a31d0565))

## [1.9.0](https://github.com/catppuccin/nvim/compare/v1.8.0...v1.9.0) (2024-08-09)


### Features

* add fzf-lua integration ([#746](https://github.com/catppuccin/nvim/issues/746)) ([05206bb](https://github.com/catppuccin/nvim/commit/05206bbb6d500a339cd55a9486532c3871a4455e))
* add lir.nvim and lir-git-status.nvim integration ([#705](https://github.com/catppuccin/nvim/issues/705)) ([d3907de](https://github.com/catppuccin/nvim/commit/d3907deedf74d1d5bd3bb990bff2db2ebc916c56))
* add markdown.nvim integration ([ba41328](https://github.com/catppuccin/nvim/commit/ba413282677e1027a42d6ff585115d3e1df12b66))
* add vim-dadbod-ui integration ([#747](https://github.com/catppuccin/nvim/issues/747)) ([4db4c77](https://github.com/catppuccin/nvim/commit/4db4c77cc17d23aa90b393f3e550ce99b9e903d5))
* **render-markdown:** add highlights for callouts ([03a2f35](https://github.com/catppuccin/nvim/commit/03a2f354456373c199eb7829fd14120cc2099108))
* **terminal:** highlight `TermCursor` and `TermCursorNC` ([#749](https://github.com/catppuccin/nvim/issues/749)) ([548b2a2](https://github.com/catppuccin/nvim/commit/548b2a25415bb60e05c536b7658aa8ffbfeb3e45))

## [1.8.0](https://github.com/catppuccin/nvim/compare/v1.7.0...v1.8.0) (2024-07-25)


### Features

* add `grug-far.nvim` integration ([#735](https://github.com/catppuccin/nvim/issues/735)) ([07f1ee8](https://github.com/catppuccin/nvim/commit/07f1ee861394c163d1f1d3e1926eb309e0c81027))
* **bufferline:** add `indicator_visible` and `modified_visible` ([#716](https://github.com/catppuccin/nvim/issues/716)) ([cc8e290](https://github.com/catppuccin/nvim/commit/cc8e290d4c0d572171243087f8541e49be2c8764))
* **csv:** built-in rainbow highlighting ([#720](https://github.com/catppuccin/nvim/issues/720)) ([67565cd](https://github.com/catppuccin/nvim/commit/67565cd353fa543fa30cb738570c2e4c87da3e9c))
* **diffview:** add diffview integrations ([#700](https://github.com/catppuccin/nvim/issues/700)) ([182f256](https://github.com/catppuccin/nvim/commit/182f25640f85a3da2f1f22b088848d896a50fcce))
* **feline:** add lazy.nvim updates module, replace deprecated API ([#725](https://github.com/catppuccin/nvim/issues/725)) ([47bd419](https://github.com/catppuccin/nvim/commit/47bd419c0cb776cb0a67ebb525891eca44020b59))
* **feline:** allow to hide lazy.nvim updates ([#731](https://github.com/catppuccin/nvim/issues/731)) ([7946d1a](https://github.com/catppuccin/nvim/commit/7946d1a195c66fed38b3e34f9fa8e0c5a2da0700))
* **integration:** add colorful-winsep.nvim ([#701](https://github.com/catppuccin/nvim/issues/701)) ([30481d6](https://github.com/catppuccin/nvim/commit/30481d659b6524e6bcae0756201d737e5bc1f209))
* **mini:** add new highlight groups ([#721](https://github.com/catppuccin/nvim/issues/721)) ([6827a67](https://github.com/catppuccin/nvim/commit/6827a6763888f73df686f32c0e5ffb5b6b754d7b))
* **nvim-surround:** add integration ([#733](https://github.com/catppuccin/nvim/issues/733)) ([3f16c6d](https://github.com/catppuccin/nvim/commit/3f16c6d1f25bcb641f7b59f7108b9f4533974c41))
* support new "Ok" diagnostics ([5215ea5](https://github.com/catppuccin/nvim/commit/5215ea59df6d0a7e27da9a5cd1165e06d1b04cbe))
* **treesitter-content:** highlight line number ([#709](https://github.com/catppuccin/nvim/issues/709)) ([4edca6b](https://github.com/catppuccin/nvim/commit/4edca6bed2ccc2715317725985c692ef0a992a50))


### Bug Fixes

* **dapui:** border match bg color ([#727](https://github.com/catppuccin/nvim/issues/727)) ([4ea0173](https://github.com/catppuccin/nvim/commit/4ea01738dc7b872f0081e7093e46d418d8d4c5a1))
* **defaults:** Enable mini integration by default ([894efb5](https://github.com/catppuccin/nvim/commit/894efb557728e532aa98b98029d16907a214ec05))
* **leap:** highlight group for LeapLabel ([2d3419c](https://github.com/catppuccin/nvim/commit/2d3419c2aead379b7d1854d32458f20ffaa58562))
* **neogit:** link WinSeparator ([#713](https://github.com/catppuccin/nvim/issues/713)) ([afccb3d](https://github.com/catppuccin/nvim/commit/afccb3d2377a3d6f0f65405899c9c23b1fd7cc28))
* small typo in feline.lua file ([#719](https://github.com/catppuccin/nvim/issues/719)) ([c0bea77](https://github.com/catppuccin/nvim/commit/c0bea773a09e49e123136b099bce9ddc1bf395d2))
* **treesitter:** highlight paths in `.gitignore` as text ([#736](https://github.com/catppuccin/nvim/issues/736)) ([4374588](https://github.com/catppuccin/nvim/commit/4374588df4e99d403a359cda2ddececcf645d8a9))

## [1.7.0](https://github.com/catppuccin/nvim/compare/v1.6.0...v1.7.0) (2024-04-13)


### Features

* add ability to toggle default integrations ([#687](https://github.com/catppuccin/nvim/issues/687)) ([e60e400](https://github.com/catppuccin/nvim/commit/e60e400c411519f29e203185ddda121d4ec8ef57))
* add support for `outline.nvim` plugin ([#647](https://github.com/catppuccin/nvim/issues/647)) ([048c18f](https://github.com/catppuccin/nvim/commit/048c18fc531703815f5e10765ea46ce9b2c75ae4))
* **defaults:** enable neotree ([c536623](https://github.com/catppuccin/nvim/commit/c536623eac60f8443c93ae4ca0e03b51574b5f50))
* **defaults:** enable treesitter context ([dc392c0](https://github.com/catppuccin/nvim/commit/dc392c067739326c3cff380a8c52b0f31319e6dd)), closes [#683](https://github.com/catppuccin/nvim/issues/683)
* **feline:** fix feline integration ([#685](https://github.com/catppuccin/nvim/issues/685)) ([07679af](https://github.com/catppuccin/nvim/commit/07679af1af4f446655682ee2557b5840ac551504))
* **feline:** improve feline lsp display ([#688](https://github.com/catppuccin/nvim/issues/688)) ([f66654d](https://github.com/catppuccin/nvim/commit/f66654d5d5190865333e8e46474c1593302c558e))
* **integration:** add reactive.nvim integration ([#654](https://github.com/catppuccin/nvim/issues/654)) ([151e478](https://github.com/catppuccin/nvim/commit/151e478edf8108cfd451a3cbd44d0a20503e7b42))
* **lsp:** add highlight for `LspCodeLensSeparator` ([#693](https://github.com/catppuccin/nvim/issues/693)) ([02bdd74](https://github.com/catppuccin/nvim/commit/02bdd749931a5d739063562e57531c118e081882))
* set `[@comment](https://github.com/comment).warning` that does not affect readability in gitcommit ([#675](https://github.com/catppuccin/nvim/issues/675)) ([045e349](https://github.com/catppuccin/nvim/commit/045e3499d9ec8d84635fb08877ae44fd33f6a38d))
* **treesitter:** add styles.miscs to disable hardcoded italics ([#659](https://github.com/catppuccin/nvim/issues/659)) ([c0de3b4](https://github.com/catppuccin/nvim/commit/c0de3b46811fe1ce3912e2245a9dfbea6b41c300))
* **treesitter:** follow upstream captures ([#630](https://github.com/catppuccin/nvim/issues/630)) ([f288876](https://github.com/catppuccin/nvim/commit/f288876c6d05d3bb91b0e72b8031fe9e26ef05b8))
* **treesitter:** follow upstream captures ([#694](https://github.com/catppuccin/nvim/issues/694)) ([08c6417](https://github.com/catppuccin/nvim/commit/08c6417bdc3b29e5f8c53e2cfe4067f288d49a54))
* use a more distinguishable color for todos ([#645](https://github.com/catppuccin/nvim/issues/645)) ([657cc4f](https://github.com/catppuccin/nvim/commit/657cc4f35cf193cadac7e5471eb802c97e7a1b59))


### Bug Fixes

* **compile:** string.dump isn't deterministic ([836de8b](https://github.com/catppuccin/nvim/commit/836de8bc1898250b69332e66cbe993058870f849)), closes [#664](https://github.com/catppuccin/nvim/issues/664)
* **dropbar:** correct keyword highlight link ([#652](https://github.com/catppuccin/nvim/issues/652)) ([afab7ec](https://github.com/catppuccin/nvim/commit/afab7ec2a79c7127627dede79c0018b6e45663d0))
* ensure consistency between JSX and HTML markup ([#660](https://github.com/catppuccin/nvim/issues/660)) ([9703f22](https://github.com/catppuccin/nvim/commit/9703f227bfab20d04bcee62d2f08f1795723b4ae))
* **flavour:** g:catppuccin_flavour backwards compatibility ([fc98570](https://github.com/catppuccin/nvim/commit/fc98570d85ae772e56dc42cf8d7d6a497a909bdb))
* **flavour:** respect terminal's background ([#696](https://github.com/catppuccin/nvim/issues/696)) ([d5760c5](https://github.com/catppuccin/nvim/commit/d5760c53ae3b48f0f539298ec4165adc5c0afb19))
* **illuminate:** update type ([#690](https://github.com/catppuccin/nvim/issues/690)) ([30930f9](https://github.com/catppuccin/nvim/commit/30930f9656cffd068bcf52ced70cdfffd1e83a44))
* **integrations:** respect default options ([c2e6f8e](https://github.com/catppuccin/nvim/commit/c2e6f8e7eb8d0ebf55700c89bdf842809aeecf09))
* **neotree:** add `NeoTreeModified` ([#642](https://github.com/catppuccin/nvim/issues/642)) ([6853cc8](https://github.com/catppuccin/nvim/commit/6853cc8e6efc76e85e10ec153d05fc2520653508))
* **neotree:** blend sidebar with win separator ([56fb982](https://github.com/catppuccin/nvim/commit/56fb98218d22d5c326387bf9e4076227e7372e6b)), closes [#670](https://github.com/catppuccin/nvim/issues/670)
* repair treesitter underlined text (`Underline` -&gt; `Underlined`) ([#663](https://github.com/catppuccin/nvim/issues/663)) ([42b687c](https://github.com/catppuccin/nvim/commit/42b687c42a35633366ed45e562bf921fb914048b))
* respect background variable on startup ([6b7a4df](https://github.com/catppuccin/nvim/commit/6b7a4dfdf241c8be0af6ec691b302e85cce03cab))
* **semantic_tokens:** namespace -&gt; module ([196f301](https://github.com/catppuccin/nvim/commit/196f301de06090c40d7f98297675ac38ae7d6675))
* **treesitter:** some captures missing leading `@` ([#650](https://github.com/catppuccin/nvim/issues/650)) ([bc1f215](https://github.com/catppuccin/nvim/commit/bc1f2151f23227ba02ac203c2c59ad693352a741))
* use external index for lsp counting ([c3572a9](https://github.com/catppuccin/nvim/commit/c3572a968a79b64bd0ef16f2c3e93014f112e66d))
* wrong color shown when using color_overrides ([#658](https://github.com/catppuccin/nvim/issues/658)) ([b76ada8](https://github.com/catppuccin/nvim/commit/b76ada82bf2019d5e343018b4104cc9266900c16)), closes [#657](https://github.com/catppuccin/nvim/issues/657)

## [1.6.0](https://github.com/catppuccin/nvim/compare/v1.5.0...v1.6.0) (2023-12-28)


### Features

* add `WinSeparator` highlight group ([#623](https://github.com/catppuccin/nvim/issues/623)) ([988c0b2](https://github.com/catppuccin/nvim/commit/988c0b2dde4140572ed37c6b8b5d5deac0219f9f))
* **bufferline:** support `no_underline` option ([#601](https://github.com/catppuccin/nvim/issues/601)) ([f7638a1](https://github.com/catppuccin/nvim/commit/f7638a1a65cbffdd01a9ddac0018a20ec4be29e2))
* **dashboard:** add highlight groups for `doom` theme ([#593](https://github.com/catppuccin/nvim/issues/593)) ([3bdd5e8](https://github.com/catppuccin/nvim/commit/3bdd5e8296971f8c7ba5e499dac8247c3d621508))
* **integrations:** enable dap & dap_ui by default ([64dc309](https://github.com/catppuccin/nvim/commit/64dc309bc157779691be38bbfc5123584e0a4a85))
* **lualine:** darken lualine `b` section for better readability ([#606](https://github.com/catppuccin/nvim/issues/606)) ([32ee05d](https://github.com/catppuccin/nvim/commit/32ee05d014a4611555c7f56a73283efb4718d9c5))
* **mini.indentscope:** add scope color ([#592](https://github.com/catppuccin/nvim/issues/592)) ([795f639](https://github.com/catppuccin/nvim/commit/795f639ac50d6b8400c1d5868fca54844d579f37))
* **neogit:** support new highlight groups ([#610](https://github.com/catppuccin/nvim/issues/610)) ([f90c7c0](https://github.com/catppuccin/nvim/commit/f90c7c0c467722dc7acacbae3c3904720e09efb6))
* **notify:** add `NotifyBackground` hl group ([#637](https://github.com/catppuccin/nvim/issues/637)) ([c7cf3af](https://github.com/catppuccin/nvim/commit/c7cf3afe2eb6d9058eec4abb3ace2c1da006478a))


### Bug Fixes

* **airline:** missing refresh function ([dcef0a0](https://github.com/catppuccin/nvim/commit/dcef0a062de380885193fb0f919217d58b979753)), closes [#594](https://github.com/catppuccin/nvim/issues/594)
* **dashboard:** `orange` -&gt; `peach` ([54002a1](https://github.com/catppuccin/nvim/commit/54002a1adfd543f54352b3ec79d4e62c4163e9ee))
* **flash:** link `FlashPrompt` to `NormalFloat` ([#605](https://github.com/catppuccin/nvim/issues/605)) ([40dc9f0](https://github.com/catppuccin/nvim/commit/40dc9f0621c55bd40da4ad0731fac44d15bb393a))
* **lualine:** match lualine mode colors for insert and terminal ([#597](https://github.com/catppuccin/nvim/issues/597)) ([ea52fe8](https://github.com/catppuccin/nvim/commit/ea52fe8a0b1e4a820df0d0cf9a6a5a0e18c3eaa0))
* **neogit:** remove `NeogitCursorLine` from integration ([#613](https://github.com/catppuccin/nvim/issues/613)) ([5e4be43](https://github.com/catppuccin/nvim/commit/5e4be43e1a6acb044d5c55cd10f22461c40656ed))
* **neogit:** remove diff context highlight fg ([1b40f07](https://github.com/catppuccin/nvim/commit/1b40f072305be71b73c730ff5c7d881e638fd040)), closes [#627](https://github.com/catppuccin/nvim/issues/627)
* **neogit:** tweak diff context highlighting ([#614](https://github.com/catppuccin/nvim/issues/614)) ([cc717ac](https://github.com/catppuccin/nvim/commit/cc717acba29259d578548973c41448b092453c52))
* **neotree:** change color of untracked files ([#608](https://github.com/catppuccin/nvim/issues/608)) ([d7521f6](https://github.com/catppuccin/nvim/commit/d7521f6050b94cb0e23067f63829d86886f870fe))
* **neotree:** make popup titlebar text visible ([#618](https://github.com/catppuccin/nvim/issues/618)) ([919d1f7](https://github.com/catppuccin/nvim/commit/919d1f786338ebeced798afbf28cd085cd54542a))
* **noice:** respect transparency ([#632](https://github.com/catppuccin/nvim/issues/632)) ([4fbab1f](https://github.com/catppuccin/nvim/commit/4fbab1f01488718c3d54034a473d0346346b90e3))
* **selene:** allow mixed tables ([#611](https://github.com/catppuccin/nvim/issues/611)) ([9f3c13b](https://github.com/catppuccin/nvim/commit/9f3c13bbcf16fcaec3a429c03743a13e5923f3e3))
* sync focused and unfocused winbars ([#628](https://github.com/catppuccin/nvim/issues/628)) ([079500a](https://github.com/catppuccin/nvim/commit/079500a625f3ae5aa6efb758f1a17fe4c7a57e52))
* **vim:** resolve deprecation of nested [[ ([7a4bcda](https://github.com/catppuccin/nvim/commit/7a4bcdadafc59a5bedbd866c643fa486d8cca4a1))

## [1.5.0](https://github.com/catppuccin/nvim/compare/v1.4.0...v1.5.0) (2023-09-29)


### Features

* add kitty detection ([d3da439](https://github.com/catppuccin/nvim/commit/d3da43907d1896ba3e68a62f18820d1d12574317))
* add ufo integration ([1f53686](https://github.com/catppuccin/nvim/commit/1f536869b1a2ca1710fc892db84d7e8bbc6ad8d9))
* add workaround for kitty transparent issue ([#579](https://github.com/catppuccin/nvim/issues/579)) ([f36fa5c](https://github.com/catppuccin/nvim/commit/f36fa5cdce162450df88298a16631eeed16b68a3))
* **compile:** use indexed cmd ([85e9360](https://github.com/catppuccin/nvim/commit/85e93601e0f0b48aa2c6bbfae4d0e9d7a1898280))
* **illuminate:** enabled by default and optional lsp option ([5b44baa](https://github.com/catppuccin/nvim/commit/5b44baa4aff0ff45c042620ee960d283a79807a1)), closes [#571](https://github.com/catppuccin/nvim/issues/571)
* **indent-blankline:** update to v3, add scope color ([#585](https://github.com/catppuccin/nvim/issues/585)) ([f04336b](https://github.com/catppuccin/nvim/commit/f04336ba4a2400ee2c5250068b39541652c0962f))
* **integrations:** add NormalNvim ([0e3c128](https://github.com/catppuccin/nvim/commit/0e3c128eea8a7de692778d52b8429817df5c9040)), closes [#580](https://github.com/catppuccin/nvim/issues/580)
* **integrations:** add notifier.nvim ([d029098](https://github.com/catppuccin/nvim/commit/d029098e124f6201a07298c0c1c499ed8d5aef76)), closes [#574](https://github.com/catppuccin/nvim/issues/574)
* **lib:** soft deprecate highlighter ([8202348](https://github.com/catppuccin/nvim/commit/82023485fec1703d6f700a4b2a92fd431d4882f4))
* **syntax:** respect style guide part 3 ([#576](https://github.com/catppuccin/nvim/issues/576)) ([81096ca](https://github.com/catppuccin/nvim/commit/81096cabe67f360acb06d64c0f7db8dd840afeba))


### Bug Fixes

* **coc:** improve inlay hints ([#582](https://github.com/catppuccin/nvim/issues/582)) ([3d9a5ed](https://github.com/catppuccin/nvim/commit/3d9a5ed556e289bce6c1fb0af89ec838360641b2))
* **editor:** invisible fold with transparent ([1c15c5e](https://github.com/catppuccin/nvim/commit/1c15c5e51a998c9198d63c6d2b75e9d1e4a84541)), closes [#577](https://github.com/catppuccin/nvim/issues/577)
* **template:** broken tmux italic gist link ([128e0d2](https://github.com/catppuccin/nvim/commit/128e0d27946491da979e2e04f5a4acf330ccdefd))
* **treesitter:** invalid string in type builtin ([135f9b0](https://github.com/catppuccin/nvim/commit/135f9b01386fa18da6d75c16ceb83e1aa3669430))
* **ufo:** use folded ellipsis ([846388d](https://github.com/catppuccin/nvim/commit/846388d137590e653390ce2f84fea5351a7516ac))
* **vim:** add vim.env index ([1786287](https://github.com/catppuccin/nvim/commit/17862877792db104d48c3260aec0ace92d55f863))


### Performance Improvements

* **compile:** reduce else statement ([a937d54](https://github.com/catppuccin/nvim/commit/a937d546f4783a1ff67f84043d2d7871ad4ecd83))

## [1.4.0](https://github.com/catppuccin/nvim/compare/v1.3.0...v1.4.0) (2023-08-21)


### Features

* add ability to enable/disable all integrations by default ([#552](https://github.com/catppuccin/nvim/issues/552)) ([737f60a](https://github.com/catppuccin/nvim/commit/737f60a3a25c79d9bb9574092f6c6c958a3d747a))
* add flash.nvim integration ([#550](https://github.com/catppuccin/nvim/issues/550)) ([381eddd](https://github.com/catppuccin/nvim/commit/381edddc4ad12126cfa7276818bca07c3d5606ed))
* enable neogit by default ([91f9f6f](https://github.com/catppuccin/nvim/commit/91f9f6fb413caff2bd06e326ec174deee1c1b7a9)), closes [#568](https://github.com/catppuccin/nvim/issues/568)
* **flash:** enable by default ([#551](https://github.com/catppuccin/nvim/issues/551)) ([a84ee18](https://github.com/catppuccin/nvim/commit/a84ee1848bfac4601771805396552bdbaa0a0e91))
* **gitsigns:** Support GitSignsCurrentLineBlame highlights ([#567](https://github.com/catppuccin/nvim/issues/567)) ([3fdd394](https://github.com/catppuccin/nvim/commit/3fdd3942567503d23b65ccc21e7d7757334defd5))
* **lspsaga:** support v0.3 ([#543](https://github.com/catppuccin/nvim/issues/543)) ([3ffd2f5](https://github.com/catppuccin/nvim/commit/3ffd2f511f3dc6c01258923d7170ccaf1445634b))
* **lspsaga:** upstream new hl groups ([#544](https://github.com/catppuccin/nvim/issues/544)) ([e0dd3f9](https://github.com/catppuccin/nvim/commit/e0dd3f9bb1513c98ab4ef9404ea26e18babf858a))
* **neogit:** update highlights ([#545](https://github.com/catppuccin/nvim/issues/545)) ([#549](https://github.com/catppuccin/nvim/issues/549)) ([371430f](https://github.com/catppuccin/nvim/commit/371430f32f2637d2dd5796399b3982d4cada61d8))
* **telescope:** make nvchad style great again ([#538](https://github.com/catppuccin/nvim/issues/538)) ([51961da](https://github.com/catppuccin/nvim/commit/51961da41e8189ca6f9ed73f37dfa83087b4e65c))
* **treesitter-context:** add color for normal background ([#564](https://github.com/catppuccin/nvim/issues/564)) ([b1caff9](https://github.com/catppuccin/nvim/commit/b1caff988fb395c0aae585cecff58b1ffa0a21c6))


### Bug Fixes

* don't highlight fg of `PmenuSel` ([#554](https://github.com/catppuccin/nvim/issues/554)) ([6425df1](https://github.com/catppuccin/nvim/commit/6425df128d46f2db2cccf9aa7a66ca2823c1d153))
* highlight NonText characters ([#547](https://github.com/catppuccin/nvim/issues/547)) ([bfe91df](https://github.com/catppuccin/nvim/commit/bfe91dfb3a19ffd4445e43611fcde68acbb3fed4))
* **integration_default:** hotfix for [#559](https://github.com/catppuccin/nvim/issues/559) ([4913a8b](https://github.com/catppuccin/nvim/commit/4913a8b47554a89a71ed44da39fc1f6e5c2841c3))
* **integration_default:** override `enabled` key only if integration has one ([#559](https://github.com/catppuccin/nvim/issues/559)) ([9709f82](https://github.com/catppuccin/nvim/commit/9709f8251a40e874238d6f9436cf4fba654b60e1))
* **noice:** set background blend to 0 for mini popups ([#556](https://github.com/catppuccin/nvim/issues/556)) ([2d50a4e](https://github.com/catppuccin/nvim/commit/2d50a4e3aecffea4144801bb3c0a3cf7b88fdd6b))
* **nvim-window-picker:** missing table keys ([#569](https://github.com/catppuccin/nvim/issues/569)) ([b9e4dae](https://github.com/catppuccin/nvim/commit/b9e4dae160bf9bc28d4ceb6d29a7e0134b107724))
* **options:** disable deprecated ts_rainbow and ts_rainbow2 by default ([096385d](https://github.com/catppuccin/nvim/commit/096385dd024ecd1332659916fd7f09d7d18d7374))
* **telescope:** keep consistency between the two styles ([#540](https://github.com/catppuccin/nvim/issues/540)) ([dfbc8e2](https://github.com/catppuccin/nvim/commit/dfbc8e2b478a65104d34556698067f2d40f1c227))
* **telescope:** respect transparency ([#542](https://github.com/catppuccin/nvim/issues/542)) ([f36af06](https://github.com/catppuccin/nvim/commit/f36af062e3242f333b12fe9b730053fdda36e000))
* **treesitter:** avoid possible nil ([17ae783](https://github.com/catppuccin/nvim/commit/17ae783b88bb7ae73dc004370473138d9d43ee46))
* **types:** make all options besides nested `enabled` optional ([#565](https://github.com/catppuccin/nvim/issues/565)) ([490078b](https://github.com/catppuccin/nvim/commit/490078b1593c6609e6a50ad5001e7902ea601824))

## [1.3.0](https://github.com/catppuccin/nvim/compare/v1.2.0...v1.3.0) (2023-07-10)


### Features

* auto-sync upstream palettes ([#507](https://github.com/catppuccin/nvim/issues/507)) ([8426d3b](https://github.com/catppuccin/nvim/commit/8426d3bfd55f4dc68ae451a82927d2ff88e47e95))
* **debug:** add auto compile on save ([c9cc5a9](https://github.com/catppuccin/nvim/commit/c9cc5a997f1dae3f35b4bdd62f35958fee363ab4))
* **dropbar:** add new highlight groups ([4f22a1e](https://github.com/catppuccin/nvim/commit/4f22a1e78460ae06e78a1085a8e0e6cc8027aef2)), closes [#503](https://github.com/catppuccin/nvim/issues/503)
* **integration:** add dropbar.nvim ([#499](https://github.com/catppuccin/nvim/issues/499)) ([e86aeb8](https://github.com/catppuccin/nvim/commit/e86aeb8ca0f03e97192074fba9dc6c836f953a83))
* **integrations:** accept both boolean and table config ([#534](https://github.com/catppuccin/nvim/issues/534)) ([f0b947a](https://github.com/catppuccin/nvim/commit/f0b947ab8cfdb9ca7ba6230b30bbc1ed48dd30a1))
* **integrations:** add rainbow_delimiters.nvim support ([#530](https://github.com/catppuccin/nvim/issues/530)) ([cc8d3ab](https://github.com/catppuccin/nvim/commit/cc8d3abc944d78cb6bf2a4cc88871ab383c4da62))
* **markdown:** add rainbow headlines ([#493](https://github.com/catppuccin/nvim/issues/493)) ([cc517bd](https://github.com/catppuccin/nvim/commit/cc517bdcb66a0f8dee90bab10ccdd651fa967bbe))
* **native_lsp:** add ability to disable background for inlay hints ([#518](https://github.com/catppuccin/nvim/issues/518)) ([b032ced](https://github.com/catppuccin/nvim/commit/b032cedb90c42a7bfbfbe2f91479505330f4a396))
* **native_lsp:** support inlay hints ([#516](https://github.com/catppuccin/nvim/issues/516)) ([d32b0bb](https://github.com/catppuccin/nvim/commit/d32b0bb5b1033920de5026e326869838aba856ee))
* **navic:** change text color ([278bfeb](https://github.com/catppuccin/nvim/commit/278bfeb61bd627dc2a8885180a0441a1ebe65a41))
* **semantic_tokens:** add some lsp semantic tokens ([#512](https://github.com/catppuccin/nvim/issues/512)) ([506a4aa](https://github.com/catppuccin/nvim/commit/506a4aa13443e0104ea49b99947cc09488d0791d))
* **telescope:** telescope flat style support ([#521](https://github.com/catppuccin/nvim/issues/521)) ([fc73faa](https://github.com/catppuccin/nvim/commit/fc73faa37bda393e3c4f846fb3e810a6ac8aae16))
* **types:** add type annotations ([#495](https://github.com/catppuccin/nvim/issues/495)) ([1d3eda1](https://github.com/catppuccin/nvim/commit/1d3eda15703ba70f57e94e6451db55914ff7017f))
* **workflows:** auto-sync upstream palettes ([e9fbeec](https://github.com/catppuccin/nvim/commit/e9fbeec106562475e82bae79304b6a421eee73f3))


### Bug Fixes

* calling palette before setup ([841d8ab](https://github.com/catppuccin/nvim/commit/841d8abf3be39de833d95a592a1fbbb1b9851296))
* **feline:** disable lsp status on nightly ([#510](https://github.com/catppuccin/nvim/issues/510)) ([9aaf5b4](https://github.com/catppuccin/nvim/commit/9aaf5b4ce5cd256695d8bbddb65869d19919abde))
* **feline:** use new `vim.lsp.status()` method ([#509](https://github.com/catppuccin/nvim/issues/509)) ([57ee09d](https://github.com/catppuccin/nvim/commit/57ee09dd532bd442b53d65c2b2f35550960981ed))
* **lsp:** do not link `LspInlayHint` to `Comment` directly ([#517](https://github.com/catppuccin/nvim/issues/517)) ([5dc566c](https://github.com/catppuccin/nvim/commit/5dc566c4206f383657d67500253559d3be82c421))
* **mapper:** remove unnecessary globals ([#529](https://github.com/catppuccin/nvim/issues/529)) ([c75562c](https://github.com/catppuccin/nvim/commit/c75562cbc954136f279ced91661251543b6f2a20))
* **native_lsp:** boolean logic ([#526](https://github.com/catppuccin/nvim/issues/526)) ([8d02781](https://github.com/catppuccin/nvim/commit/8d02781a638123394f9bc160aad47a9560a113f9))
* **tests:** shadowing variable ([15043d3](https://github.com/catppuccin/nvim/commit/15043d363729f1ef20e615c41bbd8b7e92c1453e))
* **treesitter_context:** underline content if `transparent_background` is true ([#519](https://github.com/catppuccin/nvim/issues/519)) ([6ecc158](https://github.com/catppuccin/nvim/commit/6ecc158dbf365d2cd290b58993296c42b3111965))
* **which-key:** wrong separator highlight group ([d438c01](https://github.com/catppuccin/nvim/commit/d438c0141609338140b18363a9a1e8eb8bb17130))
* **workflows:** stylua format ([2df7036](https://github.com/catppuccin/nvim/commit/2df7036c5c303c9184869936e40ca18935e4afcb))
