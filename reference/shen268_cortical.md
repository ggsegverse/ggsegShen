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
[`shen268_cerebellar()`](https://ggseg.github.io/ggsegShen/reference/shen268_cerebellar.md),
[`shen268_subcortical()`](https://ggseg.github.io/ggsegShen/reference/shen268_subcortical.md)

## Examples

``` r
shen268_cortical()
#> 
#> ── shen268_cortical ggseg atlas ────────────────────────────────────────────────
#> Type: cortical
#> Regions: 206
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 217 × 3
#>     hemi  region     label        
#>     <chr> <chr>      <chr>        
#>   1 left  region 098 lh_Region_098
#>   2 left  region 134 lh_Region_134
#>   3 left  region 135 lh_Region_135
#>   4 left  region 136 lh_Region_136
#>   5 left  region 137 lh_Region_137
#>   6 left  region 138 lh_Region_138
#>   7 left  region 139 lh_Region_139
#>   8 left  region 140 lh_Region_140
#>   9 left  region 141 lh_Region_141
#>  10 left  region 142 lh_Region_142
#>  11 left  region 143 lh_Region_143
#>  12 left  region 144 lh_Region_144
#>  13 left  region 145 lh_Region_145
#>  14 left  region 146 lh_Region_146
#>  15 left  region 147 lh_Region_147
#>  16 left  region 148 lh_Region_148
#>  17 left  region 149 lh_Region_149
#>  18 left  region 150 lh_Region_150
#>  19 left  region 151 lh_Region_151
#>  20 left  region 152 lh_Region_152
#>  21 left  region 153 lh_Region_153
#>  22 left  region 154 lh_Region_154
#>  23 left  region 155 lh_Region_155
#>  24 left  region 156 lh_Region_156
#>  25 left  region 157 lh_Region_157
#>  26 left  region 158 lh_Region_158
#>  27 left  region 159 lh_Region_159
#>  28 left  region 160 lh_Region_160
#>  29 left  region 161 lh_Region_161
#>  30 left  region 162 lh_Region_162
#>  31 left  region 163 lh_Region_163
#>  32 left  region 164 lh_Region_164
#>  33 left  region 165 lh_Region_165
#>  34 left  region 166 lh_Region_166
#>  35 left  region 167 lh_Region_167
#>  36 left  region 168 lh_Region_168
#>  37 left  region 169 lh_Region_169
#>  38 left  region 170 lh_Region_170
#>  39 left  region 171 lh_Region_171
#>  40 left  region 172 lh_Region_172
#>  41 left  region 173 lh_Region_173
#>  42 left  region 174 lh_Region_174
#>  43 left  region 175 lh_Region_175
#>  44 left  region 176 lh_Region_176
#>  45 left  region 177 lh_Region_177
#>  46 left  region 178 lh_Region_178
#>  47 left  region 179 lh_Region_179
#>  48 left  region 180 lh_Region_180
#>  49 left  region 181 lh_Region_181
#>  50 left  region 182 lh_Region_182
#>  51 left  region 183 lh_Region_183
#>  52 left  region 184 lh_Region_184
#>  53 left  region 185 lh_Region_185
#>  54 left  region 186 lh_Region_186
#>  55 left  region 187 lh_Region_187
#>  56 left  region 188 lh_Region_188
#>  57 left  region 189 lh_Region_189
#>  58 left  region 190 lh_Region_190
#>  59 left  region 191 lh_Region_191
#>  60 left  region 192 lh_Region_192
#>  61 left  region 193 lh_Region_193
#>  62 left  region 194 lh_Region_194
#>  63 left  region 195 lh_Region_195
#>  64 left  region 196 lh_Region_196
#>  65 left  region 197 lh_Region_197
#>  66 left  region 198 lh_Region_198
#>  67 left  region 199 lh_Region_199
#>  68 left  region 200 lh_Region_200
#>  69 left  region 201 lh_Region_201
#>  70 left  region 202 lh_Region_202
#>  71 left  region 203 lh_Region_203
#>  72 left  region 204 lh_Region_204
#>  73 left  region 205 lh_Region_205
#>  74 left  region 206 lh_Region_206
#>  75 left  region 207 lh_Region_207
#>  76 left  region 208 lh_Region_208
#>  77 left  region 209 lh_Region_209
#>  78 left  region 210 lh_Region_210
#>  79 left  region 211 lh_Region_211
#>  80 left  region 212 lh_Region_212
#>  81 left  region 213 lh_Region_213
#>  82 left  region 214 lh_Region_214
#>  83 left  region 215 lh_Region_215
#>  84 left  region 216 lh_Region_216
#>  85 left  region 218 lh_Region_218
#>  86 left  region 219 lh_Region_219
#>  87 left  region 220 lh_Region_220
#>  88 left  region 221 lh_Region_221
#>  89 left  region 222 lh_Region_222
#>  90 left  region 223 lh_Region_223
#>  91 left  region 224 lh_Region_224
#>  92 left  region 225 lh_Region_225
#>  93 left  region 226 lh_Region_226
#>  94 left  region 227 lh_Region_227
#>  95 left  region 228 lh_Region_228
#>  96 left  region 229 lh_Region_229
#>  97 left  region 230 lh_Region_230
#>  98 left  region 232 lh_Region_232
#>  99 left  region 233 lh_Region_233
#> 100 left  region 234 lh_Region_234
#> 101 left  region 235 lh_Region_235
#> 102 left  region 244 lh_Region_244
#> 103 left  region 254 lh_Region_254
#> 104 left  region 257 lh_Region_257
#> 105 left  region 260 lh_Region_260
#> 106 left  unknown    lh_unknown   
#> 107 right region 001 rh_Region_001
#> 108 right region 002 rh_Region_002
#> 109 right region 003 rh_Region_003
#> 110 right region 004 rh_Region_004
#> 111 right region 005 rh_Region_005
#> 112 right region 006 rh_Region_006
#> 113 right region 007 rh_Region_007
#> 114 right region 008 rh_Region_008
#> 115 right region 009 rh_Region_009
#> 116 right region 010 rh_Region_010
#> 117 right region 011 rh_Region_011
#> 118 right region 012 rh_Region_012
#> 119 right region 013 rh_Region_013
#> 120 right region 014 rh_Region_014
#> 121 right region 015 rh_Region_015
#> 122 right region 016 rh_Region_016
#> 123 right region 017 rh_Region_017
#> 124 right region 018 rh_Region_018
#> 125 right region 019 rh_Region_019
#> 126 right region 020 rh_Region_020
#> 127 right region 021 rh_Region_021
#> 128 right region 022 rh_Region_022
#> 129 right region 023 rh_Region_023
#> 130 right region 024 rh_Region_024
#> 131 right region 025 rh_Region_025
#> 132 right region 026 rh_Region_026
#> 133 right region 027 rh_Region_027
#> 134 right region 028 rh_Region_028
#> 135 right region 029 rh_Region_029
#> 136 right region 030 rh_Region_030
#> 137 right region 031 rh_Region_031
#> 138 right region 032 rh_Region_032
#> 139 right region 033 rh_Region_033
#> 140 right region 034 rh_Region_034
#> 141 right region 035 rh_Region_035
#> 142 right region 036 rh_Region_036
#> 143 right region 037 rh_Region_037
#> 144 right region 038 rh_Region_038
#> 145 right region 039 rh_Region_039
#> 146 right region 040 rh_Region_040
#> 147 right region 041 rh_Region_041
#> 148 right region 042 rh_Region_042
#> 149 right region 043 rh_Region_043
#> 150 right region 044 rh_Region_044
#> 151 right region 045 rh_Region_045
#> 152 right region 046 rh_Region_046
#> 153 right region 047 rh_Region_047
#> 154 right region 048 rh_Region_048
#> 155 right region 049 rh_Region_049
#> 156 right region 050 rh_Region_050
#> 157 right region 051 rh_Region_051
#> 158 right region 052 rh_Region_052
#> 159 right region 053 rh_Region_053
#> 160 right region 054 rh_Region_054
#> 161 right region 055 rh_Region_055
#> 162 right region 056 rh_Region_056
#> 163 right region 057 rh_Region_057
#> 164 right region 058 rh_Region_058
#> 165 right region 059 rh_Region_059
#> 166 right region 060 rh_Region_060
#> 167 right region 061 rh_Region_061
#> 168 right region 062 rh_Region_062
#> 169 right region 063 rh_Region_063
#> 170 right region 064 rh_Region_064
#> 171 right region 065 rh_Region_065
#> 172 right region 066 rh_Region_066
#> 173 right region 067 rh_Region_067
#> 174 right region 068 rh_Region_068
#> 175 right region 069 rh_Region_069
#> 176 right region 070 rh_Region_070
#> 177 right region 071 rh_Region_071
#> 178 right region 072 rh_Region_072
#> 179 right region 073 rh_Region_073
#> 180 right region 074 rh_Region_074
#> 181 right region 075 rh_Region_075
#> 182 right region 076 rh_Region_076
#> 183 right region 077 rh_Region_077
#> 184 right region 078 rh_Region_078
#> 185 right region 079 rh_Region_079
#> 186 right region 080 rh_Region_080
#> 187 right region 081 rh_Region_081
#> 188 right region 082 rh_Region_082
#> 189 right region 083 rh_Region_083
#> 190 right region 084 rh_Region_084
#> 191 right region 085 rh_Region_085
#> 192 right region 086 rh_Region_086
#> 193 right region 087 rh_Region_087
#> 194 right region 088 rh_Region_088
#> 195 right region 089 rh_Region_089
#> 196 right region 090 rh_Region_090
#> 197 right region 091 rh_Region_091
#> 198 right region 092 rh_Region_092
#> 199 right region 093 rh_Region_093
#> 200 right region 094 rh_Region_094
#> 201 right region 095 rh_Region_095
#> 202 right region 096 rh_Region_096
#> 203 right region 097 rh_Region_097
#> 204 right region 098 rh_Region_098
#> 205 right region 122 rh_Region_122
#> 206 right region 123 rh_Region_123
#> 207 right region 124 rh_Region_124
#> 208 right region 174 rh_Region_174
#> 209 right region 219 rh_Region_219
#> 210 right region 220 rh_Region_220
#> 211 right region 221 rh_Region_221
#> 212 right region 223 rh_Region_223
#> 213 right region 224 rh_Region_224
#> 214 right region 227 rh_Region_227
#> 215 right region 257 rh_Region_257
#> 216 right region 260 rh_Region_260
#> 217 right unknown    rh_unknown   
```
