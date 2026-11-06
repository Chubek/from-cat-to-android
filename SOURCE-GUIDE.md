# Source guide

The manuscript uses original prose and examples. The supplied files are
research material; they have not been edited or reproduced as chapters.
Citation notes in `references.bib` identify canonical files. Section locators
are preferred when OCR page breaks make printed pagination unreliable.

## Principal local sources

| Citation key | Actual work and selected use | Canonical file in `sources/` |
| --- | --- | --- |
| `ritchie-thompson` | Ritchie and Thompson, *The UNIX Time-Sharing System* (1974): contemporary public description | `unix-paper.txt` |
| `evolution` | Ritchie, *The Evolution of the Unix Time-sharing System*: 1979 presentation, 1984 reprint; early social and technical history | `unix-evolution.txt` |
| `retrospective` | Ritchie, *The UNIX Time-sharing System—A Retrospective*: supplied text identifies a 1977 conference version; strengths and limitations | `ritchie-unix-retroprespective.txt` |
| `implementation` | Thompson, *UNIX Implementation* (1978): process, I/O, and filesystem organization; a later snapshot than V6 | `unix-impl.txt` |
| `kernighan-history` | Kernighan, *UNIX: A History and a Memoir*: supplied copy has a 2020 copyright page; Bell Labs, C/A/T, tools, descendants | `kernighan-unix-history-and-memoir.txt` |
| `lions` | Lions, *A Commentary on the Sixth Edition UNIX Operating System* (1977): PDP-11 kernel organization | `lions-commentary-on-unix-6th-edition-with-source-code-john-lions-.txt` |
| `xv6` | Cox, Kaashoek, Morris, *xv6* (27 October 2019): RISC-V, not the older x86 edition | `xv6-unix-like-osdev.txt` |
| `bach` | Bach, *The Design of the UNIX Operating System* (1986): broader kernel background | `the-design-of-the-unix-operating-system-maurice-j.-bach-.txt` |
| `apue` | Stevens and Rago, *Advanced Programming in the UNIX Environment*, third edition (2013): application interfaces | `advanced-programming-in-the-unix-environment-w.-richard-stevens-stephen-a.-rago-.txt` |
| `unp` | Stevens, Fenner, Rudoff, *UNIX Network Programming*, volume 1, third edition (2004): sockets and stream semantics | `unix-netprog-network-vol1.txt` |
| `raymond` | Raymond, *The Art of UNIX Programming*: first published 2003; supplied third printing copyright 2004; design principles | `art-of-unix-prog.txt` |
| `programming-env` | Kernighan and Pike, *The UNIX Programming Environment* (1984): consulted through the supplied 2003 Russian translation | `kernighan-pike-unix-programming-env.txt` |
| `roddy` | Roddy, *UNIX NROFF/TROFF: A User's Guide* (1987): formatter and macro model | `unix-troff-guide.txt` |
| `cherry-lesk` | Cherry and Lesk, *Typing Documents on the UNIX System*: Research Tenth Edition text, precise date not established | `cherry-typing-docs-in-unix.txt` |
| `ffs` | McKusick, Joy, Leffler, Fabry, *A Fast File System for UNIX* (1984): locality, blocks, fragments | `fast-filesys-for-unix.txt` |
| `mach` | Accetta and colleagues, *Mach: A New Kernel Foundation for UNIX Development* (1986): early Mach, not a literal XNU description | `mach-new-kernel-for-unix.txt` |
| `salus` | Salus, *The Daemon, the GNU, and the Penguin*: undated supplied compilation; licensing, BSD, GNU, Linux | `unix-hist-daemon-gnu-penguin.txt` |
| `life` | Libes and Ressler, *Life with UNIX* (1989): workstation-era culture and software variety | `unix-hist-life-with-unix.txt` |
| `haters` | Garfinkel, Weise, Strassmann, eds., *The UNIX-HATERS Handbook* (1994): criticism and contemporary user experience | `unix-haters-handbook.txt` |
| `fuzz` | Miller, Fredriksen, So, *An Empirical Study of the Reliability of UNIX Utilities* (1990): measured random-input testing | `empiricial-study-of-unix-utils.txt` |
| `spinellis` | Spinellis, *A Repository of Unix History and Evolution* (2017 publication): supplied working-paper rendering; reconstructed history and limits | `unix-history-repo-spinellis.txt` |
| `shell-future` | Greenberg, Kallas, Vasilakis, *Unix Shell Programming: The Next 50 Years* (2021): contemporary shell research | `unix-shellprog-the-next-50yr.txt` |

Bibliographic years follow the identified copy or the explicitly identified
publication, with uncertainty preserved in notes. No date was invented for the
undated Cherry–Lesk and Salus texts. The 1977 retrospective is recorded at the
conference-version level rather than assigned unsupported journal metadata.

## Supplementary official documentation

These references were consulted on **6 November 2026** through the connected
GitHub integration. They extend the historical collection for modern topics.
The bibliography records fetched file blob identifiers where available; those
are content identifiers, not commit or release identifiers.

| Key | Document | Use |
| --- | --- | --- |
| `wayland` | [Wayland project README](https://github.com/wayland-mirror/wayland/blob/main/README.md) | Protocol, compositor, client rendering, input, buffers |
| `bionic` | [Bionic maintainer overview](https://github.com/aosp-mirror/platform_bionic/blob/main/README.md) | Android C/math libraries and dynamic linker |
| `proton` | [Proton README](https://github.com/ValveSoftware/Proton/blob/proton_11.0/README.md) | Wine-based game compatibility, components, version-specific runtime behavior |
| `cgroups` | [Linux cgroup v2 documentation](https://github.com/torvalds/linux/blob/master/Documentation/admin-guide/cgroup-v2.rst) | Resource control, hierarchy, and delegation model |

The more detailed modern explanations are technical synthesis, not claims that
the local historical books document today's implementations. No new performance
measurements, market-share study, or exhaustive compatibility testing is claimed.

## Collection cautions

- `ken-thompson-history-of-unix.txt` actually contains Markus Kuhn's *Unix Tools*
  lectures from 2003. It is not a Thompson memoir.
- `kernighan-unix-paper.txt` contains a much larger text than the Ritchie–Thompson
  paper. The canonical paper here is `unix-paper.txt`.
- `kernighan-and-pike-unix-prog-env.txt` and
  `unix-hist-a-quarter-century-of-unix.txt` are short fragments, not complete books.
- Several APUE, Raymond, Lions, filesystem, and concurrency files are exact or
  near duplicates. Repeated filenames do not supply independent corroboration.
- Empty files supply no evidence. The inventory below identifies them.
- OCR can corrupt mathematical expressions, identifiers, dates, and punctuation.
  Implementation explanations must be checked against their stated version and
  architecture; code should not be copied mechanically from OCR.
- The practical examples in the manuscript were newly written and exercised in
  a temporary directory. They are demonstrations, not production libraries.

## Exact-duplicate and empty-file inventory

The following inventory is generated from the supplied bytes, using SHA-256.
Only exact identity is asserted; near duplicates may differ in OCR or front matter.

Empty files (6):

- `design-of-unix-mach.txt`
- `mastering-unix-shell-scripting.txt`
- `understanding-unix-linux-programming.txt`
- `unix-fs.txt`
- `unix-hypertext.txt`
- `unix-programming-pajeets.txt`

Nonempty exact-duplicate groups:

- SHA-256 `2bee0eb1c08800bb7bd687ef2cd249bf66f5a5175d30bfb55b2f29ad3ac7f04e`: `unix-netprog-network-ipc.txt`, `unix-network-prog.txt`.
- SHA-256 `33505003712e22cf6db6108a2478bfd30b1de66b2f942ab0535868916a57ebe0`: `unix-concurrency.txt`, `unix-sysprog-2.txt`, `unix-sysprog-concurr.txt`, `unix-sysprog.txt`.
- SHA-256 `5eeef386d5fe3723532f8395754a9e39ae387284a82ee91a1c7b1b73f6c22fd3`: `adv-prog-in-unix.txt`, `adv-unix-prog.txt`, `advance-prog-in-unix-env.txt`.
- SHA-256 `5f240416c87b05df436120d94b7cd427c6a8d93599864542d285682c052e091a`: `unix-sml.txt`, `unix-system-programming-with-standard-ml-anthony-l.-shipman-.txt`.
- SHA-256 `7636e70cea384395bc0d64c66fb6fb3b8ec1908cf2e03eb7e214ae708e7717ef`: `lions-commentary-on-unix-6th-edition-with-source-code-john-lions-.txt`, `unix-hist-lions-commentary.txt`.
- SHA-256 `919eee82044003141b69ce08b60e21dafb1877ea499b8e95e44c60e94d81acde`: `fast-filesys-for-unix.txt`, `fast-fs-filesystem-for-unix.txt`.
- SHA-256 `bc4810345bae10dea7c0f668a007644445514a5d8248daf9cb77e318c6fab785`: `unix-prog-complete.txt`, `unix-prog-mman-procman.txt`.
- SHA-256 `d42fa67b28667113de3dd688a849efada942bd4c90482ae1bd1ddf1b766fcf14`: `eric-s.-raymond-the-art-of-unix-programming-addison-wesley-professional-2003.txt`, `raymond-art-of-unix-sysprog.txt`.
- SHA-256 `f3de661baa3b334b139274f59ddc68cb2fd4059c09cece55b28b281442af1b07`: `unix-file-systems.txt`, `unix-filesys-evoluitin.txt`, `unix-filesystems-fs.txt`, `unix-fs-filesystems.txt`.

All 85 supplied text files remain unchanged. Unlisted files are
not claimed to be independently corroborating sources or fully used references.
