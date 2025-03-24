alias Jc6.Blog.Post
alias Jc6.Repo
alias Jc6.Accounts.User

# get the user foo@bar.com
user = Repo.get_by!(User, email: "foo@bar.com")

posts = [
  %{
    author_id: user.id,
    title: "When Roots Start to Show: The First Crack in My Tech Path",
    markdown: """
    # When Roots Start to Show
    ## The First Crack in My Tech Path

    I didn’t know a *birch* from a *beech*, but I knew I was burning out.
    The idea of switching careers felt like pruning a healthy tree — risky, unnecessary, maybe even foolish.

    ### Questions I Couldn’t Shake
    - Am I just tired?
    - Do I need a sabbatical?
    - What is it about trees that’s pulling me?

    ### Looking Back
    In **2021**, I was still writing Python and deploying Django apps, but I was daydreaming about forest canopies.

    ```elixir
    # A bit of Elixir I was playing with back then
    Enum.map(trees, &String.upcase/1)
    ```

    ### Signs from the Forest
    - Long walks.
    - Nature books piling up.
    - An open tab for a forestry course.

    _The roots were growing in unexpected places._

    ###### 🌲
    """,
    excerpt: "I didn’t know a birch from a beech, but I knew I was burning out. The idea of switching careers felt like pruning a healthy tree...",
    status: "published",
    published_at: ~U[2021-05-15 10:00:00Z],
    featured: true
  },
  %{
    author_id: user.id,
    title: "Sapling Days: Learning Trees While Forgetting Tech",
    markdown: """
    # Sapling Days
    _Learning trees while forgetting tech_

    ## 2022: Logging out, literally

    The shift was awkward.
    My GitHub contributions went from green squares to mossy logs.

    ### What I learned:
    - Coppicing techniques
    - Identifying ash dieback
    - The value of silence

    ## Losing touch

    At first, I missed programming. Then, I stopped noticing.

    ```bash
    # My terminal looked more like this
    $ ls logs/
    hazel.log  oak.log  birch.log
    ```

    ## But one line stuck with me:

    > *“A healthy tree prunes itself.”*

    That line haunted me for months.

    ###### 🌿🌿🌿
    """,
    excerpt: "The shift was awkward. My GitHub contributions went from green squares to mossy logs. What I learned: coppicing, ash dieback...",
    status: "published",
    published_at: ~U[2022-09-03 09:30:00Z],
    featured: false
  },
  %{
    author_id: user.id,
    title: "Canopies & Code: Finding Parallels in Elixir",
    markdown: """
    # Canopies & Code
    ### Finding Parallels in Elixir

    Coming back to programming felt like visiting an old woodland: familiar, but strange.

    ## Elixir’s elegance

    Like a mature forest, Elixir is balanced.

    ```elixir
    defmodule Tree do
      def prune(:dead_branch), do: :removed
      def prune(_), do: :kept
    end
    ```

    ## What I missed most:
    - The clarity of functional thinking
    - The joy of pipelines
    - **Pattern matching** — like recognizing bark patterns in winter

    ## From undergrowth to understanding

    Teaching woodland skills taught me patience.
    Now, I write code like I plant trees — slow, considered, long-term.

    _And maybe that’s growth._

    ###### 🌲🧠💻
    """,
    excerpt: "Coming back to programming felt like visiting an old woodland. Elixir’s elegance reminded me of a balanced ecosystem...",
    status: "published",
    published_at: ~U[2024-11-18 16:00:00Z],
    featured: true
  },
  %{
    author_id: user.id,


    title: "Stack Traces and Sap Lines: Debugging in the Woods",
    markdown: """
    # Stack Traces and Sap Lines
    ## Debugging in the Woods

    In 2023, I was knee-deep in mud more than code. But oddly, I began to think about logs differently.

    ## Splitting Problems

    When a log jams in a woodland path, you break it down piece by piece. Debugging works the same way.

    ```python
    def debug_log(log):
      return [segment for segment in split(log) if segment != ""]
    ```

    ### Lessons learned:
    - Don’t ignore dead branches
    - Small cuts matter
    - Always keep your blade sharp

    #### From axes to assertions

    The rhythm of tree work made me appreciate the rhythm of testing.

    ###### 🪓🪵🐛
    """,
    excerpt: "In 2023, I was knee-deep in mud more than code. But oddly, I began to think about logs differently. Splitting problems, chopping errors...",
    status: "published",
    published_at: ~U[2023-04-11 14:15:00Z],
    featured: false
  },
  %{
    author_id: user.id,
    title: "Branches of Knowledge: Teaching Woodland Wisdom",
    markdown: """
    # Branches of Knowledge
    ### Teaching Woodland Wisdom

    From August 2024, I began teaching what I’d learned. It was like writing documentation for nature.

    ## Students and Saplings
    They needed structure, clarity, and examples — just like developers.

    ### Teaching Tricks:
    - Start from the roots
    - Layer complexity like canopy levels
    - Encourage exploration

    ## Realization

    I missed building things. Trees grow, but they don’t compile.

    ```bash
    $ mix phx.new forest_project
    $ cd forest_project
    ```

    #### Full circle?
    Maybe. But this time I know what feeds me.

    ###### 🌿📚✨
    """,
    excerpt: "From August 2024, I began teaching what I’d learned. It was like writing documentation for nature. Students and saplings alike...",
    status: "draft",
    published_at: ~U[2024-09-02 08:45:00Z],
    featured: false
  },
  %{
    author_id: user.id,
    title: "Logs, Logs Everywhere: From Firewood to File Systems",
    markdown: """
    # Logs, Logs Everywhere
    ## From Firewood to File Systems

    Wood stacks. So do error logs.

    In late 2023, I started noticing how much forest work mirrored my old command line life.

    ## A Curious Parallel

    ```bash
    $ tail -f /var/log/syslog
    $ tail -f /var/woodpile/stack.log
    ```

    ## Lessons:
    - Don’t let logs rot
    - Process everything in real-time
    - Stack with intention

    _One log ignored is a future failure._

    ###### 🌲🪵🖥️
    """,
    excerpt: "Wood stacks. So do error logs. In late 2023, I started noticing how much forest work mirrored my old command line life...",
    status: "draft",
    published_at: ~U[2023-11-10 12:00:00Z],
    featured: false
  },
  %{
    author_id: user.id,
    title: "Pruning Paths: Saying Goodbye to Teaching",
    markdown: """
    # Pruning Paths
    ### Saying Goodbye to Teaching

    March 2025. I walked away from the teaching role.

    It was rewarding, but the pull of code — and Elixir in particular — was louder.

    ## Looking Forward

    I miss forests, yes. But I want to build.

    ```elixir
    forest
    |> clear(:deadwood)
    |> plant(:ideas)
    |> grow(:apps)
    ```

    ### What's Next?
    - Phoenix projects
    - CLI tools
    - Maybe a course of my own someday

    ###### 🌳🛤️💻
    """,
    excerpt: "March 2025. I walked away from the teaching role. It was rewarding, but the pull of code — and Elixir in particular — was louder...",
    status: "published",
    published_at: ~U[2025-03-15 17:20:00Z],
    featured: true
  },
  %{
    author_id: user.id,
    title: "Rustling Memories: The Overlap Between Rustling Leaves and Rust Programming",
    markdown: """
    # Rustling Memories
    ### The Overlap Between Rustling Leaves and Rust Programming

    While I didn’t dive deep into Rust, I kept flirting with the idea — maybe because of the name.

    ## Shared Themes:
    - Safety
    - Performance
    - A natural feel

    ### A little experiment:

    ```rust
    fn chop(tree: &str) {
      println!("You chopped a {}!", tree);
    }
    ```

    Trees and types. Everything has a structure.

    ###### 🍂🦀🌲
    """,
    excerpt: "While I didn’t dive deep into Rust, I kept flirting with the idea — maybe because of the name. Trees and types...",
    status: "published",
    published_at: ~U[2024-05-22 10:00:00Z],
    featured: false
  },
  %{
    author_id: user.id,
    title: "From Logs to Logs: Parsing My Journey with Python",
    markdown: """
    # From Logs to Logs
    ## Parsing My Journey with Python

    Python was my first love, before the trees. And like well-seasoned firewood, it still burns clean.

    ## A Utility That Helped

    ```python
    import json
    with open('forest_data.json') as f:
        data = json.load(f)
    ```

    Structure is everywhere — in code and canopy.

    #### Full circle feels good.

    ###### 🐍🔥🌳
    """,
    excerpt: "Python was my first love, before the trees. And like well-seasoned firewood, it still burns clean. Structure is everywhere...",
    status: "published",
    published_at: ~U[2025-02-10 11:11:00Z],
    featured: false
  }
]

Enum.each(posts, fn post ->
  %Post{}
  |> Post.changeset(post)
  |> Repo.insert!()
end)
