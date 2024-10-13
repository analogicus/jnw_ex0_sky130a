---
layout: page
title: Getting Started 
---

## Tools 

You need the open source tools. There are many ways, see
[Tools](https://analogicus.com/aic2024/2023/11/16/Tools.html)

## Create the IP 

I've made some scripts to automatically generate the IP. 

To see what files are generated, see `tech_sky130A/cicconf/ip_template.yaml`

```bash
cd aicex/ip
cicconf newip ex
```

# The file structure 

It matters how you name files, and store files. I would be surprised if you 
had a good method already, as such, I won't allow you to make your own folder
structure and names for things. I also control the filenames and folder
structure because there are many scripts to make your life easier (yes, really)
that rely on an exact structure. Don't mess with it. 

## Github workflows

On github it's possible use something called workflows to run things every time
you push a new version. It's really nice, since it can then do checks that
you're design is valid. 

The grading of the milestones is determined by passing github workflows. 

We will
also check that you have not cheated, and modified the workflows just to get
them passing. 

The workflows are defined below. 

```bash
├── .github
│   └── workflows  
│       ├── docs.yaml # Generate a github page 
│       ├── drc.yaml  # Run Design Rule Checks 
│       ├── gds.yaml  # Generate a GDS file from layout 
│       ├── lvs.yaml  # Run Layout Versus Schematic and Layout Parasitic Extraction
│       └── sim.yaml  # Run a simulation 
```

## Configuration files 

Each IP has a few files that define the setup, you'll need to modify at least
the `README.md` and the `info.yaml`.

```bash
├── .gitignore  # files that are ignored by git
├── README.md   # Frontpage documentation 
├── config.yaml # What libraries are used. This file can be used by cicconf
├── info.yaml   # Setup names, authors etc 
├── media       # Where you should store images for documentation
├── tech -> ../tech_sky130A  # The technology library
``` 

## Design files 

A "cell" in the open source EDA world should consists of the following files

- Schematic (.sch)
- Layout (.mag)
- Documenation (.md)

The files must have the same name, and must be stored in `design/<LIB>/` as
shown below. 

For example, if the cell name was `JNW_EX`, then you would have 

- `design/JNW_EX_SKY130A/JNW_EX.sch`: Schematic (xschem)
- `design/JNW_EX_SKY130A/JNW_EX.sym`: Schematic (xschem)
- `design/JNW_EX_SKY130A/JNW_EX.mag`: Layout (Magic)
- `design/JNW_EX_SKY130A/JNW_EX.md` : Markdown documentation (any text editor)

All these files are text files, so you can edit them in a text editor, but
mostly you shouldn't (except for the Markdown)


```
├── design
│   └── JNW_EX_SKY130A
│       └── JNW_EX.sch

```

## Simulations 

All simulations shall be stored in `sim`. Once you have a Schematic ready for
simulation, then 

```bash 
cd sim 
make cell CELL=JNW_EX
```
This will make a simulation folder for you. Repeat for all your cells. 

```
├── sim
│   ├── Makefile
│   └── cicsim.yaml -> ../tech/cicsim/cicsim.yaml
```

## The work 

All commands (except for simulation), shall be run in the `work` folder. That's
where the setup files for Xschem, Magic, Netgen and others reside. 

```bash 
└── work
    ├── .magicrc
    ├── Makefile
    ├── mos.24bit.dstyle -> ../tech/magic/mos.24bit.dstyle
    ├── mos.24bit.std.cmap -> ../tech/magic/mos.24bit.std.cmap
    └── xschemrc

```
