# Shen 268 Cortical Parcellation

Cortical regions from the Shen 268-node functional parcellation (Shen et
al., 2013). Contains 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://ggsegverse.github.io/ggseg3d/reference/ggseg3d.html).

## Usage

``` r
shen268_cortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Shen X et al. (2013). Groupwise whole-brain parcellation from
resting-state fMRI data for network node identification.
[doi:10.1016/j.neuroimage.2013.05.081](https://doi.org/10.1016/j.neuroimage.2013.05.081)

## See also

Other ggseg_atlases:
[`shen268_subcortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_subcortical.md)

## Examples

``` r
shen268_cortical()
#> 
#> ── shen268_cortical ggseg atlas ────────────────────────────────────────────────
#> Type: cortical
#> Regions: 190
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 201 × 3
#>     hemi  region     label        
#>     <chr> <chr>      <chr>        
#>   1 left  region 098 lh_Region_098
#>   2 left  region 134 lh_Region_134
#>   3 left  region 137 lh_Region_137
#>   4 left  region 138 lh_Region_138
#>   5 left  region 139 lh_Region_139
#>   6 left  region 140 lh_Region_140
#>   7 left  region 141 lh_Region_141
#>   8 left  region 142 lh_Region_142
#>   9 left  region 143 lh_Region_143
#>  10 left  region 144 lh_Region_144
#>  11 left  region 145 lh_Region_145
#>  12 left  region 146 lh_Region_146
#>  13 left  region 147 lh_Region_147
#>  14 left  region 148 lh_Region_148
#>  15 left  region 149 lh_Region_149
#>  16 left  region 150 lh_Region_150
#>  17 left  region 151 lh_Region_151
#>  18 left  region 152 lh_Region_152
#>  19 left  region 153 lh_Region_153
#>  20 left  region 154 lh_Region_154
#>  21 left  region 155 lh_Region_155
#>  22 left  region 156 lh_Region_156
#>  23 left  region 157 lh_Region_157
#>  24 left  region 158 lh_Region_158
#>  25 left  region 159 lh_Region_159
#>  26 left  region 160 lh_Region_160
#>  27 left  region 161 lh_Region_161
#>  28 left  region 162 lh_Region_162
#>  29 left  region 163 lh_Region_163
#>  30 left  region 164 lh_Region_164
#>  31 left  region 165 lh_Region_165
#>  32 left  region 166 lh_Region_166
#>  33 left  region 167 lh_Region_167
#>  34 left  region 168 lh_Region_168
#>  35 left  region 169 lh_Region_169
#>  36 left  region 170 lh_Region_170
#>  37 left  region 171 lh_Region_171
#>  38 left  region 172 lh_Region_172
#>  39 left  region 173 lh_Region_173
#>  40 left  region 174 lh_Region_174
#>  41 left  region 175 lh_Region_175
#>  42 left  region 176 lh_Region_176
#>  43 left  region 177 lh_Region_177
#>  44 left  region 178 lh_Region_178
#>  45 left  region 179 lh_Region_179
#>  46 left  region 180 lh_Region_180
#>  47 left  region 181 lh_Region_181
#>  48 left  region 182 lh_Region_182
#>  49 left  region 183 lh_Region_183
#>  50 left  region 184 lh_Region_184
#>  51 left  region 188 lh_Region_188
#>  52 left  region 190 lh_Region_190
#>  53 left  region 191 lh_Region_191
#>  54 left  region 192 lh_Region_192
#>  55 left  region 193 lh_Region_193
#>  56 left  region 195 lh_Region_195
#>  57 left  region 196 lh_Region_196
#>  58 left  region 197 lh_Region_197
#>  59 left  region 198 lh_Region_198
#>  60 left  region 199 lh_Region_199
#>  61 left  region 200 lh_Region_200
#>  62 left  region 201 lh_Region_201
#>  63 left  region 203 lh_Region_203
#>  64 left  region 204 lh_Region_204
#>  65 left  region 205 lh_Region_205
#>  66 left  region 206 lh_Region_206
#>  67 left  region 207 lh_Region_207
#>  68 left  region 208 lh_Region_208
#>  69 left  region 209 lh_Region_209
#>  70 left  region 210 lh_Region_210
#>  71 left  region 211 lh_Region_211
#>  72 left  region 212 lh_Region_212
#>  73 left  region 213 lh_Region_213
#>  74 left  region 214 lh_Region_214
#>  75 left  region 215 lh_Region_215
#>  76 left  region 216 lh_Region_216
#>  77 left  region 218 lh_Region_218
#>  78 left  region 219 lh_Region_219
#>  79 left  region 220 lh_Region_220
#>  80 left  region 221 lh_Region_221
#>  81 left  region 222 lh_Region_222
#>  82 left  region 223 lh_Region_223
#>  83 left  region 224 lh_Region_224
#>  84 left  region 225 lh_Region_225
#>  85 left  region 226 lh_Region_226
#>  86 left  region 227 lh_Region_227
#>  87 left  region 228 lh_Region_228
#>  88 left  region 230 lh_Region_230
#>  89 left  region 231 lh_Region_231
#>  90 left  region 232 lh_Region_232
#>  91 left  region 233 lh_Region_233
#>  92 left  region 234 lh_Region_234
#>  93 left  region 235 lh_Region_235
#>  94 left  region 259 lh_Region_259
#>  95 left  region 263 lh_Region_263
#>  96 left  unknown    lh_unknown   
#>  97 right region 001 rh_Region_001
#>  98 right region 002 rh_Region_002
#>  99 right region 003 rh_Region_003
#> 100 right region 004 rh_Region_004
#> 101 right region 005 rh_Region_005
#> 102 right region 006 rh_Region_006
#> 103 right region 007 rh_Region_007
#> 104 right region 008 rh_Region_008
#> 105 right region 009 rh_Region_009
#> 106 right region 010 rh_Region_010
#> 107 right region 011 rh_Region_011
#> 108 right region 012 rh_Region_012
#> 109 right region 013 rh_Region_013
#> 110 right region 014 rh_Region_014
#> 111 right region 015 rh_Region_015
#> 112 right region 016 rh_Region_016
#> 113 right region 017 rh_Region_017
#> 114 right region 018 rh_Region_018
#> 115 right region 019 rh_Region_019
#> 116 right region 020 rh_Region_020
#> 117 right region 021 rh_Region_021
#> 118 right region 022 rh_Region_022
#> 119 right region 023 rh_Region_023
#> 120 right region 024 rh_Region_024
#> 121 right region 025 rh_Region_025
#> 122 right region 026 rh_Region_026
#> 123 right region 027 rh_Region_027
#> 124 right region 028 rh_Region_028
#> 125 right region 029 rh_Region_029
#> 126 right region 030 rh_Region_030
#> 127 right region 031 rh_Region_031
#> 128 right region 032 rh_Region_032
#> 129 right region 033 rh_Region_033
#> 130 right region 034 rh_Region_034
#> 131 right region 035 rh_Region_035
#> 132 right region 036 rh_Region_036
#> 133 right region 037 rh_Region_037
#> 134 right region 038 rh_Region_038
#> 135 right region 039 rh_Region_039
#> 136 right region 040 rh_Region_040
#> 137 right region 041 rh_Region_041
#> 138 right region 042 rh_Region_042
#> 139 right region 043 rh_Region_043
#> 140 right region 044 rh_Region_044
#> 141 right region 045 rh_Region_045
#> 142 right region 046 rh_Region_046
#> 143 right region 047 rh_Region_047
#> 144 right region 048 rh_Region_048
#> 145 right region 049 rh_Region_049
#> 146 right region 050 rh_Region_050
#> 147 right region 053 rh_Region_053
#> 148 right region 054 rh_Region_054
#> 149 right region 055 rh_Region_055
#> 150 right region 056 rh_Region_056
#> 151 right region 059 rh_Region_059
#> 152 right region 061 rh_Region_061
#> 153 right region 062 rh_Region_062
#> 154 right region 063 rh_Region_063
#> 155 right region 064 rh_Region_064
#> 156 right region 065 rh_Region_065
#> 157 right region 066 rh_Region_066
#> 158 right region 067 rh_Region_067
#> 159 right region 068 rh_Region_068
#> 160 right region 069 rh_Region_069
#> 161 right region 070 rh_Region_070
#> 162 right region 071 rh_Region_071
#> 163 right region 072 rh_Region_072
#> 164 right region 073 rh_Region_073
#> 165 right region 074 rh_Region_074
#> 166 right region 075 rh_Region_075
#> 167 right region 076 rh_Region_076
#> 168 right region 077 rh_Region_077
#> 169 right region 078 rh_Region_078
#> 170 right region 079 rh_Region_079
#> 171 right region 080 rh_Region_080
#> 172 right region 081 rh_Region_081
#> 173 right region 082 rh_Region_082
#> 174 right region 083 rh_Region_083
#> 175 right region 084 rh_Region_084
#> 176 right region 085 rh_Region_085
#> 177 right region 086 rh_Region_086
#> 178 right region 089 rh_Region_089
#> 179 right region 090 rh_Region_090
#> 180 right region 091 rh_Region_091
#> 181 right region 092 rh_Region_092
#> 182 right region 093 rh_Region_093
#> 183 right region 094 rh_Region_094
#> 184 right region 095 rh_Region_095
#> 185 right region 096 rh_Region_096
#> 186 right region 097 rh_Region_097
#> 187 right region 098 rh_Region_098
#> 188 right region 099 rh_Region_099
#> 189 right region 125 rh_Region_125
#> 190 right region 126 rh_Region_126
#> 191 right region 128 rh_Region_128
#> 192 right region 174 rh_Region_174
#> 193 right region 219 rh_Region_219
#> 194 right region 220 rh_Region_220
#> 195 right region 221 rh_Region_221
#> 196 right region 223 rh_Region_223
#> 197 right region 224 rh_Region_224
#> 198 right region 227 rh_Region_227
#> 199 right region 259 rh_Region_259
#> 200 right region 263 rh_Region_263
#> 201 right unknown    rh_unknown   
```
