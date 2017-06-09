module Tachyons exposing (..)

{-|
# Tachyons for Elm

[Tachyons]() is an _the_ best CSS framework ever. It's an implementation of
what people call "Functional CSS" which, as an Elm programmer, need I say more?

In functional CSS you have a ton of little css classes that do one thing, and
do it well #unixphilosophy.

Essentially what this means is that can create almost any interface without
writing custom css, you only need to compose different css selectors together.

for instance you could do this using functional CSS:

    div [classes [pa1, red, f1]] []

This will:
- Add the smallest padding avalible on all four sides (Padding Around 1)
- Make the forground color red (an Accessible friendly version)
- Make the `font-size` as big as an h1 tag.

There's helper classes for just about anything you could possibly ever need.

The only thing you have to do is include Tachyons on the page. An easy way to
do this is via this helper method:


    tachyons


@docs absolute, absolute__fill, absolute__fill_l, absolute__fill_m, absolute__fill_ns, absolute_l, absolute_m, absolute_ns, aspect_ratio, aspect_ratio__16x9, aspect_ratio__16x9_l, aspect_ratio__16x9_m, aspect_ratio__16x9_ns, aspect_ratio__1x1, aspect_ratio__1x1_l, aspect_ratio__1x1_m, aspect_ratio__1x1_ns, aspect_ratio__3x4, aspect_ratio__3x4_l, aspect_ratio__3x4_m, aspect_ratio__3x4_ns, aspect_ratio__4x3, aspect_ratio__4x3_l, aspect_ratio__4x3_m, aspect_ratio__4x3_ns, aspect_ratio__4x6, aspect_ratio__4x6_l, aspect_ratio__4x6_m, aspect_ratio__4x6_ns, aspect_ratio__5x7, aspect_ratio__5x7_l, aspect_ratio__5x7_m, aspect_ratio__5x7_ns, aspect_ratio__5x8, aspect_ratio__5x8_l, aspect_ratio__5x8_m, aspect_ratio__5x8_ns, aspect_ratio__6x4, aspect_ratio__6x4_l, aspect_ratio__6x4_m, aspect_ratio__6x4_ns, aspect_ratio__7x5, aspect_ratio__7x5_l, aspect_ratio__7x5_m, aspect_ratio__7x5_ns, aspect_ratio__8x5, aspect_ratio__8x5_l, aspect_ratio__8x5_m, aspect_ratio__8x5_ns, aspect_ratio__9x16, aspect_ratio__9x16_l, aspect_ratio__9x16_m, aspect_ratio__9x16_ns, aspect_ratio__object, aspect_ratio__object_l, aspect_ratio__object_m, aspect_ratio__object_ns, aspect_ratio_l, aspect_ratio_m, aspect_ratio_ns, athelas, avenir, b, b__black, b__black_0125, b__black_025, b__black_05, b__black_10, b__black_20, b__black_30, b__black_40, b__black_50, b__black_60, b__black_70, b__black_80, b__black_90, b__blue, b__dark_blue, b__dark_gray, b__dark_green, b__dark_pink, b__dark_red, b__dashed, b__dashed_l, b__dashed_m, b__dashed_ns, b__dotted, b__dotted_l, b__dotted_m, b__dotted_ns, b__gold, b__gray, b__green, b__hot_pink, b__inherit, b__light_blue, b__light_gray, b__light_green, b__light_pink, b__light_purple, b__light_red, b__light_silver, b__light_yellow, b__lightest_blue, b__mid_gray, b__moon_gray, b__navy, b__near_black, b__near_white, b__none, b__none_l, b__none_m, b__none_ns, b__orange, b__pink, b__purple, b__red, b__silver, b__solid, b__solid_l, b__solid_m, b__solid_ns, b__transparent, b__washed_blue, b__washed_green, b__washed_red, b__washed_yellow, b__white, b__white_0125, b__white_025, b__white_05, b__white_10, b__white_20, b__white_30, b__white_40, b__white_50, b__white_60, b__white_70, b__white_80, b__white_90, b__yellow, b_l, b_m, b_ns, ba, ba_l, ba_m, ba_ns, baskerville, bb, bb_0, bb_0_l, bb_0_m, bb_0_ns, bb_l, bb_m, bb_ns, bg_animate, bg_animated, bg_black, bg_black_05, bg_black_10, bg_black_20, bg_black_30, bg_black_40, bg_black_50, bg_black_60, bg_black_70, bg_black_80, bg_black_90, bg_blue, bg_bottom, bg_bottom_l, bg_bottom_m, bg_bottom_ns, bg_center, bg_center_l, bg_center_m, bg_center_ns, bg_dark_blue, bg_dark_gray, bg_dark_green, bg_dark_pink, bg_dark_red, bg_gold, bg_gray, bg_green, bg_hot_pink, bg_inherit, bg_left, bg_left_l, bg_left_m, bg_left_ns, bg_light_blue, bg_light_gray, bg_light_green, bg_light_pink, bg_light_purple, bg_light_red, bg_light_silver, bg_light_yellow, bg_lightest_blue, bg_mid_gray, bg_moon_gray, bg_navy, bg_near_black, bg_near_white, bg_orange, bg_pink, bg_purple, bg_red, bg_right, bg_right_l, bg_right_m, bg_right_ns, bg_silver, bg_top, bg_top_l, bg_top_m, bg_top_ns, bg_transparent, bg_washed_blue, bg_washed_green, bg_washed_red, bg_washed_yellow, bg_white, bg_white_10, bg_white_20, bg_white_30, bg_white_40, bg_white_50, bg_white_60, bg_white_70, bg_white_80, bg_white_90, bg_yellow, bl, bl_0, bl_0_l, bl_0_m, bl_0_ns, bl_l, bl_m, bl_ns, black, black_05, black_10, black_20, black_30, black_40, black_50, black_60, black_70, black_80, black_90, blue, bn, bn_l, bn_m, bn_ns, bodoni, border_box, bottom_0, bottom_0_l, bottom_0_m, bottom_0_ns, bottom_1, bottom_1_l, bottom_1_m, bottom_1_ns, bottom_2, bottom_2_l, bottom_2_m, bottom_2_ns, bottom__1, bottom__1_l, bottom__1_m, bottom__1_ns, bottom__2, bottom__2_l, bottom__2_m, bottom__2_ns, br, br0, br0_l, br0_m, br0_ns, br1, br1_l, br1_m, br1_ns, br2, br2_l, br2_m, br2_ns, br3, br3_l, br3_m, br3_ns, br4, br4_l, br4_m, br4_ns, br_0, br_0_l, br_0_m, br_0_ns, br_100, br_100_l, br_100_m, br_100_ns, br__bottom, br__bottom_l, br__bottom_m, br__bottom_ns, br__left, br__left_l, br__left_m, br__left_ns, br__right, br__right_l, br__right_m, br__right_ns, br__top, br__top_l, br__top_m, br__top_ns, br_l, br_m, br_ns, br_pill, br_pill_l, br_pill_m, br_pill_ns, bt, bt_0, bt_0_l, bt_0_m, bt_0_ns, bt_l, bt_m, bt_ns, button_resetd, bw0, bw0_l, bw0_m, bw0_ns, bw1, bw1_l, bw1_m, bw1_ns, bw2, bw2_l, bw2_m, bw2_ns, bw3, bw3_l, bw3_m, bw3_ns, bw4, bw4_l, bw4_m, bw4_ns, bw5, bw5_l, bw5_m, bw5_ns, calisto, cb, cb_l, cb_m, cb_ns, center, center_l, center_m, center_ns, cf, cfd, cl, cl_l, cl_m, cl_ns, classes, clip, clip_l, clip_m, clip_ns, cn, cn_l, cn_m, cn_ns, collapse, color_inherit, contain, contain_l, contain_m, contain_ns, content_around, content_around_l, content_around_m, content_around_ns, content_between, content_between_l, content_between_m, content_between_ns, content_center, content_center_l, content_center_m, content_center_ns, content_end, content_end_l, content_end_m, content_end_ns, content_start, content_start_l, content_start_m, content_start_ns, content_stretch, content_stretch_l, content_stretch_m, content_stretch_ns, courier, cover, cover_l, cover_m, cover_ns, cr, cr_l, cr_m, cr_ns, dark_blue, dark_gray, dark_green, dark_pink, dark_red, db, db_l, db_m, db_ns, debug, debug_black, debug_grid, debug_grid_16, debug_grid_16_solid, debug_grid_8_solid, debug_white, di, di_l, di_m, di_ns, dib, dib_l, dib_m, dib_ns, dim, dimd, dit, dit_l, dit_m, dit_ns, dn, dn_l, dn_m, dn_ns, dt, dt__fixed, dt__fixed_l, dt__fixed_m, dt__fixed_ns, dt_column, dt_column_group, dt_column_group_l, dt_column_group_m, dt_column_group_ns, dt_column_l, dt_column_m, dt_column_ns, dt_l, dt_m, dt_ns, dt_row, dt_row_group, dt_row_group_l, dt_row_group_m, dt_row_group_ns, dt_row_l, dt_row_m, dt_row_ns, dtc, dtc_l, dtc_m, dtc_ns, f1, f1_l, f1_m, f1_ns, f2, f2_l, f2_m, f2_ns, f3, f3_l, f3_m, f3_ns, f4, f4_l, f4_m, f4_ns, f5, f5_l, f5_m, f5_ns, f6, f6_l, f6_m, f6_ns, f7, f7_l, f7_m, f7_ns, f_headline, f_subheadline, fixed, fixed_l, fixed_m, fixed_ns, fl, fl_l, fl_m, fl_ns, flex, flex_auto, flex_auto_l, flex_auto_m, flex_auto_ns, flex_column, flex_column_l, flex_column_m, flex_column_ns, flex_column_reverse, flex_column_reverse_l, flex_column_reverse_m, flex_column_reverse_ns, flex_l, flex_m, flex_none, flex_none_l, flex_none_m, flex_none_ns, flex_ns, flex_row, flex_row_l, flex_row_m, flex_row_ns, flex_row_reverse, flex_row_reverse_l, flex_row_reverse_m, flex_row_reverse_ns, flex_wrap, flex_wrap_l, flex_wrap_m, flex_wrap_ns, flex_wrap_reverse, flex_wrap_reverse_l, flex_wrap_reverse_m, flex_wrap_reverse_ns, fn, fn_l, fn_m, fn_ns, fr, fr_l, fr_m, fr_ns, fs_normal, fs_normal_l, fs_normal_m, fs_normal_ns, fw1, fw1_l, fw1_m, fw1_ns, fw2, fw2_l, fw2_m, fw2_ns, fw3, fw3_l, fw3_m, fw3_ns, fw4, fw4_l, fw4_m, fw4_ns, fw5, fw5_l, fw5_m, fw5_ns, fw6, fw6_l, fw6_m, fw6_ns, fw7, fw7_l, fw7_m, fw7_ns, fw8, fw8_l, fw8_m, fw8_ns, fw9, fw9_l, fw9_m, fw9_ns, garamond, georgia, glow, glowd, gold, gray, green, grow, grow_large, grow_larged, growd, h1, h1_l, h1_m, h1_ns, h2, h2_l, h2_m, h2_ns, h3, h3_l, h3_m, h3_ns, h4, h4_l, h4_m, h4_ns, h5, h5_l, h5_m, h5_ns, h_100, h_100_l, h_100_m, h_100_ns, h_25, h_25_l, h_25_m, h_25_ns, h_50, h_50_l, h_50_m, h_50_ns, h_75, h_75_l, h_75_m, h_75_ns, h_auto, h_auto_l, h_auto_m, h_auto_ns, h_inherit, h_inherit_l, h_inherit_m, h_inherit_ns, helvetica, hide_child, hide_childd, hot_pink, hover_bg_black_10d, hover_bg_black_20d, hover_bg_black_30d, hover_bg_black_40d, hover_bg_black_50d, hover_bg_black_60d, hover_bg_black_70d, hover_bg_black_80d, hover_bg_black_90d, hover_bg_blackd, hover_bg_blued, hover_bg_dark_blued, hover_bg_dark_grayd, hover_bg_dark_greend, hover_bg_dark_pinkd, hover_bg_dark_redd, hover_bg_goldd, hover_bg_grayd, hover_bg_greend, hover_bg_hot_pinkd, hover_bg_inheritd, hover_bg_light_blued, hover_bg_light_grayd, hover_bg_light_greend, hover_bg_light_pinkd, hover_bg_light_purpled, hover_bg_light_redd, hover_bg_light_silverd, hover_bg_light_yellowd, hover_bg_lightest_blued, hover_bg_mid_grayd, hover_bg_moon_grayd, hover_bg_navyd, hover_bg_near_blackd, hover_bg_near_whited, hover_bg_oranged, hover_bg_pinkd, hover_bg_purpled, hover_bg_redd, hover_bg_silverd, hover_bg_transparentd, hover_bg_washed_blued, hover_bg_washed_greend, hover_bg_washed_redd, hover_bg_washed_yellowd, hover_bg_white_10d, hover_bg_white_20d, hover_bg_white_30d, hover_bg_white_40d, hover_bg_white_50d, hover_bg_white_60d, hover_bg_white_70d, hover_bg_white_80d, hover_bg_white_90d, hover_bg_whited, hover_bg_yellowd, hover_black_10d, hover_black_20d, hover_black_30d, hover_black_40d, hover_black_50d, hover_black_60d, hover_black_70d, hover_black_80d, hover_black_90d, hover_blackd, hover_blued, hover_dark_blued, hover_dark_grayd, hover_dark_greend, hover_dark_pinkd, hover_dark_redd, hover_goldd, hover_grayd, hover_greend, hover_hot_pinkd, hover_inheritd, hover_light_blued, hover_light_grayd, hover_light_greend, hover_light_pinkd, hover_light_purpled, hover_light_redd, hover_light_silverd, hover_light_yellowd, hover_lightest_blued, hover_mid_grayd, hover_moon_grayd, hover_navyd, hover_near_blackd, hover_near_whited, hover_oranged, hover_pinkd, hover_purpled, hover_redd, hover_silverd, hover_washed_blued, hover_washed_greend, hover_washed_redd, hover_washed_yellowd, hover_white_10d, hover_white_20d, hover_white_30d, hover_white_40d, hover_white_50d, hover_white_60d, hover_white_70d, hover_white_80d, hover_white_90d, hover_whited, hover_yellowd, i, i_l, i_m, i_ns, img, indent, indent_l, indent_m, indent_ns, inline_flex, inline_flex_l, inline_flex_m, inline_flex_ns, input_reset, input_resetd, items_baseline, items_baseline_l, items_baseline_m, items_baseline_ns, items_center, items_center_l, items_center_m, items_center_ns, items_end, items_end_l, items_end_m, items_end_ns, items_start, items_start_l, items_start_m, items_start_ns, items_stretch, items_stretch_l, items_stretch_m, items_stretch_ns, justify_around, justify_around_l, justify_around_m, justify_around_ns, justify_between, justify_between_l, justify_between_m, justify_between_ns, justify_center, justify_center_l, justify_center_m, justify_center_ns, justify_end, justify_end_l, justify_end_m, justify_end_ns, justify_start, justify_start_l, justify_start_m, justify_start_ns, left_0, left_0_l, left_0_m, left_0_ns, left_1, left_1_l, left_1_m, left_1_ns, left_2, left_2_l, left_2_m, left_2_ns, left__1, left__1_l, left__1_m, left__1_ns, left__2, left__2_l, left__2_m, left__2_ns, lh_copy, lh_copy_l, lh_copy_m, lh_copy_ns, lh_solid, lh_solid_l, lh_solid_m, lh_solid_ns, lh_title, lh_title_l, lh_title_m, lh_title_ns, light_blue, light_gray, light_green, light_pink, light_purple, light_red, light_silver, light_yellow, lightest_blue, link, linkd, list, ma0, ma0_l, ma0_m, ma0_ns, ma1, ma1_l, ma1_m, ma1_ns, ma2, ma2_l, ma2_m, ma2_ns, ma3, ma3_l, ma3_m, ma3_ns, ma4, ma4_l, ma4_m, ma4_ns, ma5, ma5_l, ma5_m, ma5_ns, ma6, ma6_l, ma6_m, ma6_ns, ma7, ma7_l, ma7_m, ma7_ns, mb0, mb0_l, mb0_m, mb0_ns, mb1, mb1_l, mb1_m, mb1_ns, mb2, mb2_l, mb2_m, mb2_ns, mb3, mb3_l, mb3_m, mb3_ns, mb4, mb4_l, mb4_m, mb4_ns, mb5, mb5_l, mb5_m, mb5_ns, mb6, mb6_l, mb6_m, mb6_ns, mb7, mb7_l, mb7_m, mb7_ns, measure, measure_l, measure_m, measure_narrow, measure_narrow_l, measure_narrow_m, measure_narrow_ns, measure_ns, measure_wide, measure_wide_l, measure_wide_m, measure_wide_ns, mh0, mh0_l, mh0_m, mh0_ns, mh1, mh1_l, mh1_m, mh1_ns, mh2, mh2_l, mh2_m, mh2_ns, mh3, mh3_l, mh3_m, mh3_ns, mh4, mh4_l, mh4_m, mh4_ns, mh5, mh5_l, mh5_m, mh5_ns, mh6, mh6_l, mh6_m, mh6_ns, mh7, mh7_l, mh7_m, mh7_ns, mid_gray, min_h_100, min_h_100_l, min_h_100_m, min_h_100_ns, min_vh_100, min_vh_100_l, min_vh_100_m, min_vh_100_ns, ml0, ml0_l, ml0_m, ml0_ns, ml1, ml1_l, ml1_m, ml1_ns, ml2, ml2_l, ml2_m, ml2_ns, ml3, ml3_l, ml3_m, ml3_ns, ml4, ml4_l, ml4_m, ml4_ns, ml5, ml5_l, ml5_m, ml5_ns, ml6, ml6_l, ml6_m, ml6_ns, ml7, ml7_l, ml7_m, ml7_ns, moon_gray, mr0, mr0_l, mr0_m, mr0_ns, mr1, mr1_l, mr1_m, mr1_ns, mr2, mr2_l, mr2_m, mr2_ns, mr3, mr3_l, mr3_m, mr3_ns, mr4, mr4_l, mr4_m, mr4_ns, mr5, mr5_l, mr5_m, mr5_ns, mr6, mr6_l, mr6_m, mr6_ns, mr7, mr7_l, mr7_m, mr7_ns, mt0, mt0_l, mt0_m, mt0_ns, mt1, mt1_l, mt1_m, mt1_ns, mt2, mt2_l, mt2_m, mt2_ns, mt3, mt3_l, mt3_m, mt3_ns, mt4, mt4_l, mt4_m, mt4_ns, mt5, mt5_l, mt5_m, mt5_ns, mt6, mt6_l, mt6_m, mt6_ns, mt7, mt7_l, mt7_m, mt7_ns, mv0, mv0_l, mv0_m, mv0_ns, mv1, mv1_l, mv1_m, mv1_ns, mv2, mv2_l, mv2_m, mv2_ns, mv3, mv3_l, mv3_m, mv3_ns, mv4, mv4_l, mv4_m, mv4_ns, mv5, mv5_l, mv5_m, mv5_ns, mv6, mv6_l, mv6_m, mv6_ns, mv7, mv7_l, mv7_m, mv7_ns, mw1, mw1_l, mw1_m, mw1_ns, mw2, mw2_l, mw2_m, mw2_ns, mw3, mw3_l, mw3_m, mw3_ns, mw4, mw4_l, mw4_m, mw4_ns, mw5, mw5_l, mw5_m, mw5_ns, mw6, mw6_l, mw6_m, mw6_ns, mw7, mw7_l, mw7_m, mw7_ns, mw8, mw8_l, mw8_m, mw8_ns, mw9, mw9_l, mw9_m, mw9_ns, mw_100, mw_100_l, mw_100_m, mw_100_ns, mw_none, mw_none_l, mw_none_m, mw_none_ns, na1, na1_l, na1_m, na1_ns, na2, na2_l, na2_m, na2_ns, na3, na3_l, na3_m, na3_ns, na4, na4_l, na4_m, na4_ns, na5, na5_l, na5_m, na5_ns, na6, na6_l, na6_m, na6_ns, na7, na7_l, na7_m, na7_ns, navy, nb1, nb1_l, nb1_m, nb1_ns, nb2, nb2_l, nb2_m, nb2_ns, nb3, nb3_l, nb3_m, nb3_ns, nb4, nb4_l, nb4_m, nb4_ns, nb5, nb5_l, nb5_m, nb5_ns, nb6, nb6_l, nb6_m, nb6_ns, nb7, nb7_l, nb7_m, nb7_ns, near_black, near_white, nested_copy_indent, nested_copy_line_height, nested_copy_seperator, nested_headline_line_height, nested_img, nested_links, nested_list_reset, nl1, nl1_l, nl1_m, nl1_ns, nl2, nl2_l, nl2_m, nl2_ns, nl3, nl3_l, nl3_m, nl3_ns, nl4, nl4_l, nl4_m, nl4_ns, nl5, nl5_l, nl5_m, nl5_ns, nl6, nl6_l, nl6_m, nl6_ns, nl7, nl7_l, nl7_m, nl7_ns, no_underline, no_underline_l, no_underline_m, no_underline_ns, normal, normal_l, normal_m, normal_ns, nowrap, nowrap_l, nowrap_m, nowrap_ns, nr1, nr1_l, nr1_m, nr1_ns, nr2, nr2_l, nr2_m, nr2_ns, nr3, nr3_l, nr3_m, nr3_ns, nr4, nr4_l, nr4_m, nr4_ns, nr5, nr5_l, nr5_m, nr5_ns, nr6, nr6_l, nr6_m, nr6_ns, nr7, nr7_l, nr7_m, nr7_ns, nt1, nt1_l, nt1_m, nt1_ns, nt2, nt2_l, nt2_m, nt2_ns, nt3, nt3_l, nt3_m, nt3_ns, nt4, nt4_l, nt4_m, nt4_ns, nt5, nt5_l, nt5_m, nt5_ns, nt6, nt6_l, nt6_m, nt6_ns, nt7, nt7_l, nt7_m, nt7_ns, o_0, o_025, o_05, o_10, o_100, o_20, o_30, o_40, o_50, o_60, o_70, o_80, o_90, orange, order_0, order_0_l, order_0_m, order_0_ns, order_1, order_1_l, order_1_m, order_1_ns, order_2, order_2_l, order_2_m, order_2_ns, order_3, order_3_l, order_3_m, order_3_ns, order_4, order_4_l, order_4_m, order_4_ns, order_5, order_5_l, order_5_m, order_5_ns, order_6, order_6_l, order_6_m, order_6_ns, order_7, order_7_l, order_7_m, order_7_ns, order_8, order_8_l, order_8_m, order_8_ns, order_last, order_last_l, order_last_m, order_last_ns, outline, outline_0, outline_0_l, outline_0_m, outline_0_ns, outline_l, outline_m, outline_ns, outline_transparent, outline_transparent_l, outline_transparent_m, outline_transparent_ns, overflow_auto, overflow_auto_l, overflow_auto_m, overflow_auto_ns, overflow_container, overflow_hidden, overflow_hidden_l, overflow_hidden_m, overflow_hidden_ns, overflow_scroll, overflow_scroll_l, overflow_scroll_m, overflow_scroll_ns, overflow_visible, overflow_visible_l, overflow_visible_m, overflow_visible_ns, overflow_x_auto, overflow_x_auto_l, overflow_x_auto_m, overflow_x_auto_ns, overflow_x_hidden, overflow_x_hidden_l, overflow_x_hidden_m, overflow_x_hidden_ns, overflow_x_scroll, overflow_x_scroll_l, overflow_x_scroll_m, overflow_x_scroll_ns, overflow_x_visible, overflow_x_visible_l, overflow_x_visible_m, overflow_x_visible_ns, overflow_y_auto, overflow_y_auto_l, overflow_y_auto_m, overflow_y_auto_ns, overflow_y_hidden, overflow_y_hidden_l, overflow_y_hidden_m, overflow_y_hidden_ns, overflow_y_scroll, overflow_y_scroll_l, overflow_y_scroll_m, overflow_y_scroll_ns, overflow_y_visible, overflow_y_visible_l, overflow_y_visible_m, overflow_y_visible_ns, pa0, pa0_l, pa0_m, pa0_ns, pa1, pa1_l, pa1_m, pa1_ns, pa2, pa2_l, pa2_m, pa2_ns, pa3, pa3_l, pa3_m, pa3_ns, pa4, pa4_l, pa4_m, pa4_ns, pa5, pa5_l, pa5_m, pa5_ns, pa6, pa6_l, pa6_m, pa6_ns, pa7, pa7_l, pa7_m, pa7_ns, pb0, pb0_l, pb0_m, pb0_ns, pb1, pb1_l, pb1_m, pb1_ns, pb2, pb2_l, pb2_m, pb2_ns, pb3, pb3_l, pb3_m, pb3_ns, pb4, pb4_l, pb4_m, pb4_ns, pb5, pb5_l, pb5_m, pb5_ns, pb6, pb6_l, pb6_m, pb6_ns, pb7, pb7_l, pb7_m, pb7_ns, ph0, ph0_l, ph0_m, ph0_ns, ph1, ph1_l, ph1_m, ph1_ns, ph2, ph2_l, ph2_m, ph2_ns, ph3, ph3_l, ph3_m, ph3_ns, ph4, ph4_l, ph4_m, ph4_ns, ph5, ph5_l, ph5_m, ph5_ns, ph6, ph6_l, ph6_m, ph6_ns, ph7, ph7_l, ph7_m, ph7_ns, pink, pl0, pl0_l, pl0_m, pl0_ns, pl1, pl1_l, pl1_m, pl1_ns, pl2, pl2_l, pl2_m, pl2_ns, pl3, pl3_l, pl3_m, pl3_ns, pl4, pl4_l, pl4_m, pl4_ns, pl5, pl5_l, pl5_m, pl5_ns, pl6, pl6_l, pl6_m, pl6_ns, pl7, pl7_l, pl7_m, pl7_ns, pointerd, pr0, pr0_l, pr0_m, pr0_ns, pr1, pr1_l, pr1_m, pr1_ns, pr2, pr2_l, pr2_m, pr2_ns, pr3, pr3_l, pr3_m, pr3_ns, pr4, pr4_l, pr4_m, pr4_ns, pr5, pr5_l, pr5_m, pr5_ns, pr6, pr6_l, pr6_m, pr6_ns, pr7, pr7_l, pr7_m, pr7_ns, pre, pre_l, pre_m, pre_ns, pt0, pt0_l, pt0_m, pt0_ns, pt1, pt1_l, pt1_m, pt1_ns, pt2, pt2_l, pt2_m, pt2_ns, pt3, pt3_l, pt3_m, pt3_ns, pt4, pt4_l, pt4_m, pt4_ns, pt5, pt5_l, pt5_m, pt5_ns, pt6, pt6_l, pt6_m, pt6_ns, pt7, pt7_l, pt7_m, pt7_ns, purple, pv0, pv0_l, pv0_m, pv0_ns, pv1, pv1_l, pv1_m, pv1_ns, pv2, pv2_l, pv2_m, pv2_ns, pv3, pv3_l, pv3_m, pv3_ns, pv4, pv4_l, pv4_m, pv4_ns, pv5, pv5_l, pv5_m, pv5_ns, pv6, pv6_l, pv6_m, pv6_ns, pv7, pv7_l, pv7_m, pv7_ns, red, relative, relative_l, relative_m, relative_ns, right_0, right_0_l, right_0_m, right_0_ns, right_1, right_1_l, right_1_m, right_1_ns, right_2, right_2_l, right_2_m, right_2_ns, right__1, right__1_l, right__1_m, right__1_ns, right__2, right__2_l, right__2_m, right__2_ns, rotate_135, rotate_135_l, rotate_135_m, rotate_135_ns, rotate_180, rotate_180_l, rotate_180_m, rotate_180_ns, rotate_225, rotate_225_l, rotate_225_m, rotate_225_ns, rotate_270, rotate_270_l, rotate_270_m, rotate_270_ns, rotate_315, rotate_315_l, rotate_315_m, rotate_315_ns, rotate_45, rotate_45_l, rotate_45_m, rotate_45_ns, rotate_90, rotate_90_l, rotate_90_m, rotate_90_ns, sans_serif, self_baseline, self_baseline_l, self_baseline_m, self_baseline_ns, self_center, self_center_l, self_center_m, self_center_ns, self_end, self_end_l, self_end_m, self_end_ns, self_start, self_start_l, self_start_m, self_start_ns, self_stretch, self_stretch_l, self_stretch_m, self_stretch_ns, serif, shadow_1, shadow_1_l, shadow_1_m, shadow_1_ns, shadow_2, shadow_2_l, shadow_2_m, shadow_2_ns, shadow_3, shadow_3_l, shadow_3_m, shadow_3_ns, shadow_4, shadow_4_l, shadow_4_m, shadow_4_ns, shadow_5, shadow_5_l, shadow_5_m, shadow_5_ns, shadow_hover, shadow_hoverd, silver, small_caps, small_caps_l, small_caps_m, small_caps_ns, static, static_l, static_m, static_ns, strike, strike_l, strike_m, strike_ns, stripe_darkd, stripe_lightd, striped__light_grayd, striped__light_silverd, striped__moon_grayd, striped__near_whited, stylesheet, system_sans_serif, system_serif, tachyons, tc, tc_l, tc_m, tc_ns, times, tl, tl_l, tl_m, tl_ns, top_0, top_0_l, top_0_m, top_0_ns, top_1, top_1_l, top_1_m, top_1_ns, top_2, top_2_l, top_2_m, top_2_ns, top__1, top__1_l, top__1_m, top__1_ns, top__2, top__2_l, top__2_m, top__2_ns, tr, tr_l, tr_m, tr_ns, tracked, tracked_l, tracked_m, tracked_mega, tracked_mega_l, tracked_mega_m, tracked_mega_ns, tracked_ns, tracked_tight, tracked_tight_l, tracked_tight_m, tracked_tight_ns, truncate, truncate_l, truncate_m, truncate_ns, ttc, ttc_l, ttc_m, ttc_ns, ttl, ttl_l, ttl_m, ttl_ns, ttn, ttn_l, ttn_m, ttn_ns, ttu, ttu_l, ttu_m, ttu_ns, underline, underline_hoverd, underline_l, underline_m, underline_ns, v_base, v_base_l, v_base_m, v_base_ns, v_btm, v_btm_l, v_btm_m, v_btm_ns, v_mid, v_mid_l, v_mid_m, v_mid_ns, v_top, v_top_l, v_top_m, v_top_ns, vh_100, vh_100_l, vh_100_m, vh_100_ns, vh_25, vh_25_l, vh_25_m, vh_25_ns, vh_50, vh_50_l, vh_50_m, vh_50_ns, vh_75, vh_75_l, vh_75_m, vh_75_ns, w1, w1_l, w1_m, w1_ns, w2, w2_l, w2_m, w2_ns, w3, w3_l, w3_m, w3_ns, w4, w4_l, w4_m, w4_ns, w5, w5_l, w5_m, w5_ns, w_10, w_100, w_100_l, w_100_m, w_100_ns, w_10_l, w_10_m, w_10_ns, w_20, w_20_l, w_20_m, w_20_ns, w_25, w_25_l, w_25_m, w_25_ns, w_30, w_30_l, w_30_m, w_30_ns, w_33, w_33_l, w_33_m, w_33_ns, w_34, w_34_l, w_34_m, w_34_ns, w_40, w_40_l, w_40_m, w_40_ns, w_50, w_50_l, w_50_m, w_50_ns, w_60, w_60_l, w_60_m, w_60_ns, w_70, w_70_l, w_70_m, w_70_ns, w_75, w_75_l, w_75_m, w_75_ns, w_80, w_80_l, w_80_m, w_80_ns, w_90, w_90_l, w_90_m, w_90_ns, w_auto, w_auto_l, w_auto_m, w_auto_ns, w_third, w_third_l, w_third_m, w_third_ns, w_two_thirds, w_two_thirds_l, w_two_thirds_m, w_two_thirds_ns, washed_blue, washed_green, washed_red, washed_yellow, white, white_10, white_20, white_30, white_40, white_50, white_60, white_70, white_80, white_90, ws_normal, ws_normal_l, ws_normal_m, ws_normal_ns, yellow, z_0, z_1, z_2, z_3, z_4, z_5, z_999, z_9999, z_inherit, z_initial, z_max, z_unset
-}

import Html exposing (..)
import Html.Attributes exposing (class, href, rel)


{-|
This is a helper funciton that will allow you to combine
multiple Tachyons classes (which are strings) are return a
`Html.Attributes`

    div [classes [pa3, red, f1]] []
-}
classes : List String -> Html.Attribute msg
classes stringList =
    class (String.join " " stringList)


{-| [Tachyons 4.6.1](http://tachyons.io/)
> _"Create fast loading, highly readable, and 100% responsive interfaces with as
> little css as possible."_
also is an implementation of [functional CSS](https://marcelosomers.com/writing/rationalizing-functional-css/).
-}
tachyons : { css : Html msg }
tachyons =
    { css = stylesheet "https://unpkg.com/tachyons@4.6.1/css/tachyons.min.css" }


{-| An easy way to add stylesheets to a Html document
-}
stylesheet : String -> Html msg
stylesheet url =
    node "link"
        [ rel "stylesheet"
        , href url
        ]
        []


{-| border_box
-}
border_box : String
border_box =
    "border-box"


{-| aspect_ratio
-}
aspect_ratio : String
aspect_ratio =
    "aspect-ratio"


{-| aspect_ratio__16x9
-}
aspect_ratio__16x9 : String
aspect_ratio__16x9 =
    "aspect-ratio--16x9"


{-| aspect_ratio__9x16
-}
aspect_ratio__9x16 : String
aspect_ratio__9x16 =
    "aspect-ratio--9x16"


{-| aspect_ratio__4x3
-}
aspect_ratio__4x3 : String
aspect_ratio__4x3 =
    "aspect-ratio--4x3"


{-| aspect_ratio__3x4
-}
aspect_ratio__3x4 : String
aspect_ratio__3x4 =
    "aspect-ratio--3x4"


{-|
aspect_ratio__6x4
-}
aspect_ratio__6x4 : String
aspect_ratio__6x4 =
    "aspect-ratio--6x4"


{-| aspect_ratio__4x6
-}
aspect_ratio__4x6 : String
aspect_ratio__4x6 =
    "aspect-ratio--4x6"


{-| aspect_ratio__8x5
-}
aspect_ratio__8x5 : String
aspect_ratio__8x5 =
    "aspect-ratio--8x5"


{-| aspect_ratio__5x8
-}
aspect_ratio__5x8 : String
aspect_ratio__5x8 =
    "aspect-ratio--5x8"


{-| aspect_ratio__7x5
-}
aspect_ratio__7x5 : String
aspect_ratio__7x5 =
    "aspect-ratio--7x5"


{-| aspect_ratio__5x7
-}
aspect_ratio__5x7 : String
aspect_ratio__5x7 =
    "aspect-ratio--5x7"


{-| aspect_ratio__1x1
-}
aspect_ratio__1x1 : String
aspect_ratio__1x1 =
    "aspect-ratio--1x1"


{-| aspect_ratio__object
-}
aspect_ratio__object : String
aspect_ratio__object =
    "aspect-ratio--object"


{-| aspect_ratio_ns
-}
aspect_ratio_ns : String
aspect_ratio_ns =
    "aspect-ratio-ns"


{-| aspect_ratio__16x9_ns
-}
aspect_ratio__16x9_ns : String
aspect_ratio__16x9_ns =
    "aspect-ratio--16x9-ns"


{-| aspect_ratio__9x16_ns
-}
aspect_ratio__9x16_ns : String
aspect_ratio__9x16_ns =
    "aspect-ratio--9x16-ns"


{-| aspect_ratio__4x3_ns
-}
aspect_ratio__4x3_ns : String
aspect_ratio__4x3_ns =
    "aspect-ratio--4x3-ns"


{-| aspect_ratio__3x4_ns
-}
aspect_ratio__3x4_ns : String
aspect_ratio__3x4_ns =
    "aspect-ratio--3x4-ns"


{-| aspect_ratio__6x4_ns
-}
aspect_ratio__6x4_ns : String
aspect_ratio__6x4_ns =
    "aspect-ratio--6x4-ns"


{-| aspect_ratio__4x6_ns
-}
aspect_ratio__4x6_ns : String
aspect_ratio__4x6_ns =
    "aspect-ratio--4x6-ns"


{-| aspect_ratio__8x5_ns
-}
aspect_ratio__8x5_ns : String
aspect_ratio__8x5_ns =
    "aspect-ratio--8x5-ns"


{-| aspect_ratio__5x8_ns
-}
aspect_ratio__5x8_ns : String
aspect_ratio__5x8_ns =
    "aspect-ratio--5x8-ns"


{-| aspect_ratio__7x5_ns
-}
aspect_ratio__7x5_ns : String
aspect_ratio__7x5_ns =
    "aspect-ratio--7x5-ns"


{-| aspect_ratio__5x7_ns
-}
aspect_ratio__5x7_ns : String
aspect_ratio__5x7_ns =
    "aspect-ratio--5x7-ns"


{-| aspect_ratio__1x1_ns
-}
aspect_ratio__1x1_ns : String
aspect_ratio__1x1_ns =
    "aspect-ratio--1x1-ns"


{-| aspect_ratio__object_ns
-}
aspect_ratio__object_ns : String
aspect_ratio__object_ns =
    "aspect-ratio--object-ns"


{-| aspect_ratio_m
-}
aspect_ratio_m : String
aspect_ratio_m =
    "aspect-ratio-m"


{-| aspect_ratio__16x9_m
-}
aspect_ratio__16x9_m : String
aspect_ratio__16x9_m =
    "aspect-ratio--16x9-m"


{-| aspect_ratio__9x16_m
-}
aspect_ratio__9x16_m : String
aspect_ratio__9x16_m =
    "aspect-ratio--9x16-m"


{-| aspect_ratio__4x3_m
-}
aspect_ratio__4x3_m : String
aspect_ratio__4x3_m =
    "aspect-ratio--4x3-m"


{-| aspect_ratio__3x4_m
-}
aspect_ratio__3x4_m : String
aspect_ratio__3x4_m =
    "aspect-ratio--3x4-m"


{-| aspect_ratio__6x4_m
-}
aspect_ratio__6x4_m : String
aspect_ratio__6x4_m =
    "aspect-ratio--6x4-m"


{-| aspect_ratio__4x6_m
-}
aspect_ratio__4x6_m : String
aspect_ratio__4x6_m =
    "aspect-ratio--4x6-m"


{-| aspect_ratio__8x5_m
-}
aspect_ratio__8x5_m : String
aspect_ratio__8x5_m =
    "aspect-ratio--8x5-m"


{-| aspect_ratio__5x8_m
-}
aspect_ratio__5x8_m : String
aspect_ratio__5x8_m =
    "aspect-ratio--5x8-m"


{-| aspect_ratio__7x5_m
-}
aspect_ratio__7x5_m : String
aspect_ratio__7x5_m =
    "aspect-ratio--7x5-m"


{-| aspect_ratio__5x7_m
-}
aspect_ratio__5x7_m : String
aspect_ratio__5x7_m =
    "aspect-ratio--5x7-m"


{-| aspect_ratio__1x1_m
-}
aspect_ratio__1x1_m : String
aspect_ratio__1x1_m =
    "aspect-ratio--1x1-m"


{-| aspect_ratio__object_m
-}
aspect_ratio__object_m : String
aspect_ratio__object_m =
    "aspect-ratio--object-m"


{-| aspect_ratio_l
-}
aspect_ratio_l : String
aspect_ratio_l =
    "aspect-ratio-l"


{-| aspect_ratio__16x9_l
-}
aspect_ratio__16x9_l : String
aspect_ratio__16x9_l =
    "aspect-ratio--16x9-l"


{-| aspect_ratio__9x16_l
-}
aspect_ratio__9x16_l : String
aspect_ratio__9x16_l =
    "aspect-ratio--9x16-l"


{-| aspect_ratio__4x3_l
-}
aspect_ratio__4x3_l : String
aspect_ratio__4x3_l =
    "aspect-ratio--4x3-l"


{-| aspect_ratio__3x4_l
-}
aspect_ratio__3x4_l : String
aspect_ratio__3x4_l =
    "aspect-ratio--3x4-l"


{-| aspect_ratio__6x4_l
-}
aspect_ratio__6x4_l : String
aspect_ratio__6x4_l =
    "aspect-ratio--6x4-l"


{-| aspect_ratio__4x6_l
-}
aspect_ratio__4x6_l : String
aspect_ratio__4x6_l =
    "aspect-ratio--4x6-l"


{-| aspect_ratio__8x5_l
-}
aspect_ratio__8x5_l : String
aspect_ratio__8x5_l =
    "aspect-ratio--8x5-l"


{-| aspect_ratio__5x8_l
-}
aspect_ratio__5x8_l : String
aspect_ratio__5x8_l =
    "aspect-ratio--5x8-l"


{-| aspect_ratio__7x5_l
-}
aspect_ratio__7x5_l : String
aspect_ratio__7x5_l =
    "aspect-ratio--7x5-l"


{-| aspect_ratio__5x7_l
-}
aspect_ratio__5x7_l : String
aspect_ratio__5x7_l =
    "aspect-ratio--5x7-l"


{-| aspect_ratio__1x1_l
-}
aspect_ratio__1x1_l : String
aspect_ratio__1x1_l =
    "aspect-ratio--1x1-l"


{-| aspect_ratio__object_l
-}
aspect_ratio__object_l : String
aspect_ratio__object_l =
    "aspect-ratio--object-l"


{-| img
-}
img : String
img =
    "img"


{-| cover
-}
cover : String
cover =
    "cover"


{-| contain
-}
contain : String
contain =
    "contain"


{-| cover_ns
-}
cover_ns : String
cover_ns =
    "cover-ns"


{-| contain_ns
-}
contain_ns : String
contain_ns =
    "contain-ns"


{-| cover_m
-}
cover_m : String
cover_m =
    "cover-m"


{-| contain_m
-}
contain_m : String
contain_m =
    "contain-m"


{-| cover_l
-}
cover_l : String
cover_l =
    "cover-l"


{-| contain_l
-}
contain_l : String
contain_l =
    "contain-l"


{-| bg_center
-}
bg_center : String
bg_center =
    "bg-center"


{-| bg_top
-}
bg_top : String
bg_top =
    "bg-top"


{-| bg_right
-}
bg_right : String
bg_right =
    "bg-right"


{-| bg_bottom
-}
bg_bottom : String
bg_bottom =
    "bg-bottom"


{-| bg_left
-}
bg_left : String
bg_left =
    "bg-left"


{-| bg_center_ns
-}
bg_center_ns : String
bg_center_ns =
    "bg-center-ns"


{-| bg_top_ns
-}
bg_top_ns : String
bg_top_ns =
    "bg-top-ns"


{-| bg_right_ns
-}
bg_right_ns : String
bg_right_ns =
    "bg-right-ns"


{-| bg_bottom_ns
-}
bg_bottom_ns : String
bg_bottom_ns =
    "bg-bottom-ns"


{-| bg_left_ns
-}
bg_left_ns : String
bg_left_ns =
    "bg-left-ns"


{-| bg_center_m
-}
bg_center_m : String
bg_center_m =
    "bg-center-m"


{-| bg_top_m
-}
bg_top_m : String
bg_top_m =
    "bg-top-m"


{-| bg_right_m
-}
bg_right_m : String
bg_right_m =
    "bg-right-m"


{-| bg_bottom_m
-}
bg_bottom_m : String
bg_bottom_m =
    "bg-bottom-m"


{-| bg_left_m
-}
bg_left_m : String
bg_left_m =
    "bg-left-m"


{-| bg_center_l
-}
bg_center_l : String
bg_center_l =
    "bg-center-l"


{-| bg_top_l
-}
bg_top_l : String
bg_top_l =
    "bg-top-l"


{-| bg_right_l
-}
bg_right_l : String
bg_right_l =
    "bg-right-l"


{-| bg_bottom_l
-}
bg_bottom_l : String
bg_bottom_l =
    "bg-bottom-l"


{-| bg_left_l
-}
bg_left_l : String
bg_left_l =
    "bg-left-l"


{-| outline
-}
outline : String
outline =
    "outline"


{-| outline_transparent
-}
outline_transparent : String
outline_transparent =
    "outline-transparent"


{-| outline_0
-}
outline_0 : String
outline_0 =
    "outline-0"


{-| outline_ns
-}
outline_ns : String
outline_ns =
    "outline-ns"


{-| outline_transparent_ns
-}
outline_transparent_ns : String
outline_transparent_ns =
    "outline-transparent-ns"


{-| outline_0_ns
-}
outline_0_ns : String
outline_0_ns =
    "outline-0-ns"


{-| outline_m
-}
outline_m : String
outline_m =
    "outline-m"


{-| outline_transparent_m
-}
outline_transparent_m : String
outline_transparent_m =
    "outline-transparent-m"


{-| outline_0_m
-}
outline_0_m : String
outline_0_m =
    "outline-0-m"


{-| outline_l
-}
outline_l : String
outline_l =
    "outline-l"


{-| outline_transparent_l
-}
outline_transparent_l : String
outline_transparent_l =
    "outline-transparent-l"


{-| outline_0_l
-}
outline_0_l : String
outline_0_l =
    "outline-0-l"


{-| ba
-}
ba : String
ba =
    "ba"


{-| bt
-}
bt : String
bt =
    "bt"


{-| br
-}
br : String
br =
    "br"


{-| bb
-}
bb : String
bb =
    "bb"


{-| bl
-}
bl : String
bl =
    "bl"


{-| bn
-}
bn : String
bn =
    "bn"


{-| ba_ns
-}
ba_ns : String
ba_ns =
    "ba-ns"


{-| bt_ns
-}
bt_ns : String
bt_ns =
    "bt-ns"


{-| br_ns
-}
br_ns : String
br_ns =
    "br-ns"


{-| bb_ns
-}
bb_ns : String
bb_ns =
    "bb-ns"


{-| bl_ns
-}
bl_ns : String
bl_ns =
    "bl-ns"


{-| bn_ns
-}
bn_ns : String
bn_ns =
    "bn-ns"


{-| ba_m
-}
ba_m : String
ba_m =
    "ba-m"


{-| bt_m
-}
bt_m : String
bt_m =
    "bt-m"


{-| br_m
-}
br_m : String
br_m =
    "br-m"


{-| bb_m
-}
bb_m : String
bb_m =
    "bb-m"


{-| bl_m
-}
bl_m : String
bl_m =
    "bl-m"


{-| bn_m
-}
bn_m : String
bn_m =
    "bn-m"


{-| ba_l
-}
ba_l : String
ba_l =
    "ba-l"


{-| bt_l
-}
bt_l : String
bt_l =
    "bt-l"


{-| br_l
-}
br_l : String
br_l =
    "br-l"


{-| bb_l
-}
bb_l : String
bb_l =
    "bb-l"


{-| bl_l
-}
bl_l : String
bl_l =
    "bl-l"


{-| bn_l
-}
bn_l : String
bn_l =
    "bn-l"


{-| b__black
-}
b__black : String
b__black =
    "b--black"


{-| b__near_black
-}
b__near_black : String
b__near_black =
    "b--near-black"


{-| b__dark_gray
-}
b__dark_gray : String
b__dark_gray =
    "b--dark-gray"


{-| b__mid_gray
-}
b__mid_gray : String
b__mid_gray =
    "b--mid-gray"


{-| b__gray
-}
b__gray : String
b__gray =
    "b--gray"


{-| b__silver
-}
b__silver : String
b__silver =
    "b--silver"


{-| b__light_silver
-}
b__light_silver : String
b__light_silver =
    "b--light-silver"


{-| b__moon_gray
-}
b__moon_gray : String
b__moon_gray =
    "b--moon-gray"


{-| b__light_gray
-}
b__light_gray : String
b__light_gray =
    "b--light-gray"


{-| b__near_white
-}
b__near_white : String
b__near_white =
    "b--near-white"


{-| b__white
-}
b__white : String
b__white =
    "b--white"


{-| b__white_90
-}
b__white_90 : String
b__white_90 =
    "b--white-90"


{-| b__white_80
-}
b__white_80 : String
b__white_80 =
    "b--white-80"


{-| b__white_70
-}
b__white_70 : String
b__white_70 =
    "b--white-70"


{-| b__white_60
-}
b__white_60 : String
b__white_60 =
    "b--white-60"


{-| b__white_50
-}
b__white_50 : String
b__white_50 =
    "b--white-50"


{-| b__white_40
-}
b__white_40 : String
b__white_40 =
    "b--white-40"


{-| b__white_30
-}
b__white_30 : String
b__white_30 =
    "b--white-30"


{-| b__white_20
-}
b__white_20 : String
b__white_20 =
    "b--white-20"


{-| b__white_10
-}
b__white_10 : String
b__white_10 =
    "b--white-10"


{-| b__white_05
-}
b__white_05 : String
b__white_05 =
    "b--white-05"


{-| b__white_025
-}
b__white_025 : String
b__white_025 =
    "b--white-025"


{-| b__white_0125
-}
b__white_0125 : String
b__white_0125 =
    "b--white-0125"


{-| b__black_90
-}
b__black_90 : String
b__black_90 =
    "b--black-90"


{-| b__black_80
-}
b__black_80 : String
b__black_80 =
    "b--black-80"


{-| b__black_70
-}
b__black_70 : String
b__black_70 =
    "b--black-70"


{-| b__black_60
-}
b__black_60 : String
b__black_60 =
    "b--black-60"


{-| b__black_50
-}
b__black_50 : String
b__black_50 =
    "b--black-50"


{-| b__black_40
-}
b__black_40 : String
b__black_40 =
    "b--black-40"


{-| b__black_30
-}
b__black_30 : String
b__black_30 =
    "b--black-30"


{-| b__black_20
-}
b__black_20 : String
b__black_20 =
    "b--black-20"


{-| b__black_10
-}
b__black_10 : String
b__black_10 =
    "b--black-10"


{-| b__black_05
-}
b__black_05 : String
b__black_05 =
    "b--black-05"


{-| b__black_025
-}
b__black_025 : String
b__black_025 =
    "b--black-025"


{-| b__black_0125
-}
b__black_0125 : String
b__black_0125 =
    "b--black-0125"


{-| b__dark_red
-}
b__dark_red : String
b__dark_red =
    "b--dark-red"


{-| b__red
-}
b__red : String
b__red =
    "b--red"


{-| b__light_red
-}
b__light_red : String
b__light_red =
    "b--light-red"


{-| b__orange
-}
b__orange : String
b__orange =
    "b--orange"


{-| b__gold
-}
b__gold : String
b__gold =
    "b--gold"


{-| b__yellow
-}
b__yellow : String
b__yellow =
    "b--yellow"


{-| b__light_yellow
-}
b__light_yellow : String
b__light_yellow =
    "b--light-yellow"


{-| b__purple
-}
b__purple : String
b__purple =
    "b--purple"


{-| b__light_purple
-}
b__light_purple : String
b__light_purple =
    "b--light-purple"


{-| b__dark_pink
-}
b__dark_pink : String
b__dark_pink =
    "b--dark-pink"


{-| b__hot_pink
-}
b__hot_pink : String
b__hot_pink =
    "b--hot-pink"


{-| b__pink
-}
b__pink : String
b__pink =
    "b--pink"


{-| b__light_pink
-}
b__light_pink : String
b__light_pink =
    "b--light-pink"


{-| b__dark_green
-}
b__dark_green : String
b__dark_green =
    "b--dark-green"


{-| b__green
-}
b__green : String
b__green =
    "b--green"


{-| b__light_green
-}
b__light_green : String
b__light_green =
    "b--light-green"


{-| b__navy
-}
b__navy : String
b__navy =
    "b--navy"


{-| b__dark_blue
-}
b__dark_blue : String
b__dark_blue =
    "b--dark-blue"


{-| b__blue
-}
b__blue : String
b__blue =
    "b--blue"


{-| b__light_blue
-}
b__light_blue : String
b__light_blue =
    "b--light-blue"


{-| b__lightest_blue
-}
b__lightest_blue : String
b__lightest_blue =
    "b--lightest-blue"


{-| b__washed_blue
-}
b__washed_blue : String
b__washed_blue =
    "b--washed-blue"


{-| b__washed_green
-}
b__washed_green : String
b__washed_green =
    "b--washed-green"


{-| b__washed_yellow
-}
b__washed_yellow : String
b__washed_yellow =
    "b--washed-yellow"


{-| b__washed_red
-}
b__washed_red : String
b__washed_red =
    "b--washed-red"


{-| b__transparent
-}
b__transparent : String
b__transparent =
    "b--transparent"


{-| b__inherit
-}
b__inherit : String
b__inherit =
    "b--inherit"


{-| br0
-}
br0 : String
br0 =
    "br0"


{-| br1
-}
br1 : String
br1 =
    "br1"


{-| br2
-}
br2 : String
br2 =
    "br2"


{-| br3
-}
br3 : String
br3 =
    "br3"


{-| br4
-}
br4 : String
br4 =
    "br4"


{-| br_100
-}
br_100 : String
br_100 =
    "br-100"


{-| br_pill
-}
br_pill : String
br_pill =
    "br-pill"


{-| br__bottom
-}
br__bottom : String
br__bottom =
    "br--bottom"


{-| br__top
-}
br__top : String
br__top =
    "br--top"


{-| br__right
-}
br__right : String
br__right =
    "br--right"


{-| br__left
-}
br__left : String
br__left =
    "br--left"


{-| br0_ns
-}
br0_ns : String
br0_ns =
    "br0-ns"


{-| br1_ns
-}
br1_ns : String
br1_ns =
    "br1-ns"


{-| br2_ns
-}
br2_ns : String
br2_ns =
    "br2-ns"


{-| br3_ns
-}
br3_ns : String
br3_ns =
    "br3-ns"


{-| br4_ns
-}
br4_ns : String
br4_ns =
    "br4-ns"


{-| br_100_ns
-}
br_100_ns : String
br_100_ns =
    "br-100-ns"


{-| br_pill_ns
-}
br_pill_ns : String
br_pill_ns =
    "br-pill-ns"


{-| br__bottom_ns
-}
br__bottom_ns : String
br__bottom_ns =
    "br--bottom-ns"


{-| br__top_ns
-}
br__top_ns : String
br__top_ns =
    "br--top-ns"


{-| br__right_ns
-}
br__right_ns : String
br__right_ns =
    "br--right-ns"


{-| br__left_ns
-}
br__left_ns : String
br__left_ns =
    "br--left-ns"


{-| br0_m
-}
br0_m : String
br0_m =
    "br0-m"


{-| br1_m
-}
br1_m : String
br1_m =
    "br1-m"


{-| br2_m
-}
br2_m : String
br2_m =
    "br2-m"


{-| br3_m
-}
br3_m : String
br3_m =
    "br3-m"


{-| br4_m
-}
br4_m : String
br4_m =
    "br4-m"


{-| br_100_m
-}
br_100_m : String
br_100_m =
    "br-100-m"


{-| br_pill_m
-}
br_pill_m : String
br_pill_m =
    "br-pill-m"


{-| br__bottom_m
-}
br__bottom_m : String
br__bottom_m =
    "br--bottom-m"


{-| br__top_m
-}
br__top_m : String
br__top_m =
    "br--top-m"


{-| br__right_m
-}
br__right_m : String
br__right_m =
    "br--right-m"


{-| br__left_m
-}
br__left_m : String
br__left_m =
    "br--left-m"


{-| br0_l
-}
br0_l : String
br0_l =
    "br0-l"


{-| br1_l
-}
br1_l : String
br1_l =
    "br1-l"


{-| br2_l
-}
br2_l : String
br2_l =
    "br2-l"


{-| br3_l
-}
br3_l : String
br3_l =
    "br3-l"


{-| br4_l
-}
br4_l : String
br4_l =
    "br4-l"


{-| br_100_l
-}
br_100_l : String
br_100_l =
    "br-100-l"


{-| br_pill_l
-}
br_pill_l : String
br_pill_l =
    "br-pill-l"


{-| br__bottom_l
-}
br__bottom_l : String
br__bottom_l =
    "br--bottom-l"


{-| br__top_l
-}
br__top_l : String
br__top_l =
    "br--top-l"


{-| br__right_l
-}
br__right_l : String
br__right_l =
    "br--right-l"


{-| br__left_l
-}
br__left_l : String
br__left_l =
    "br--left-l"


{-| b__dotted
-}
b__dotted : String
b__dotted =
    "b--dotted"


{-| b__dashed
-}
b__dashed : String
b__dashed =
    "b--dashed"


{-| b__solid
-}
b__solid : String
b__solid =
    "b--solid"


{-| b__none
-}
b__none : String
b__none =
    "b--none"


{-| b__dotted_ns
-}
b__dotted_ns : String
b__dotted_ns =
    "b--dotted-ns"


{-| b__dashed_ns
-}
b__dashed_ns : String
b__dashed_ns =
    "b--dashed-ns"


{-| b__solid_ns
-}
b__solid_ns : String
b__solid_ns =
    "b--solid-ns"


{-| b__none_ns
-}
b__none_ns : String
b__none_ns =
    "b--none-ns"


{-| b__dotted_m
-}
b__dotted_m : String
b__dotted_m =
    "b--dotted-m"


{-| b__dashed_m
-}
b__dashed_m : String
b__dashed_m =
    "b--dashed-m"


{-| b__solid_m
-}
b__solid_m : String
b__solid_m =
    "b--solid-m"


{-| b__none_m
-}
b__none_m : String
b__none_m =
    "b--none-m"


{-| b__dotted_l
-}
b__dotted_l : String
b__dotted_l =
    "b--dotted-l"


{-| b__dashed_l
-}
b__dashed_l : String
b__dashed_l =
    "b--dashed-l"


{-| b__solid_l
-}
b__solid_l : String
b__solid_l =
    "b--solid-l"


{-| b__none_l
-}
b__none_l : String
b__none_l =
    "b--none-l"


{-| bw0
-}
bw0 : String
bw0 =
    "bw0"


{-| bw1
-}
bw1 : String
bw1 =
    "bw1"


{-| bw2
-}
bw2 : String
bw2 =
    "bw2"


{-| bw3
-}
bw3 : String
bw3 =
    "bw3"


{-| bw4
-}
bw4 : String
bw4 =
    "bw4"


{-| bw5
-}
bw5 : String
bw5 =
    "bw5"


{-| bt_0
-}
bt_0 : String
bt_0 =
    "bt-0"


{-| br_0
-}
br_0 : String
br_0 =
    "br-0"


{-| bb_0
-}
bb_0 : String
bb_0 =
    "bb-0"


{-| bl_0
-}
bl_0 : String
bl_0 =
    "bl-0"


{-| bw0_ns
-}
bw0_ns : String
bw0_ns =
    "bw0-ns"


{-| bw1_ns
-}
bw1_ns : String
bw1_ns =
    "bw1-ns"


{-| bw2_ns
-}
bw2_ns : String
bw2_ns =
    "bw2-ns"


{-| bw3_ns
-}
bw3_ns : String
bw3_ns =
    "bw3-ns"


{-| bw4_ns
-}
bw4_ns : String
bw4_ns =
    "bw4-ns"


{-| bw5_ns
-}
bw5_ns : String
bw5_ns =
    "bw5-ns"


{-| bt_0_ns
-}
bt_0_ns : String
bt_0_ns =
    "bt-0-ns"


{-| br_0_ns
-}
br_0_ns : String
br_0_ns =
    "br-0-ns"


{-| bb_0_ns
-}
bb_0_ns : String
bb_0_ns =
    "bb-0-ns"


{-| bl_0_ns
-}
bl_0_ns : String
bl_0_ns =
    "bl-0-ns"


{-| bw0_m
-}
bw0_m : String
bw0_m =
    "bw0-m"


{-| bw1_m
-}
bw1_m : String
bw1_m =
    "bw1-m"


{-| bw2_m
-}
bw2_m : String
bw2_m =
    "bw2-m"


{-| bw3_m
-}
bw3_m : String
bw3_m =
    "bw3-m"


{-| bw4_m
-}
bw4_m : String
bw4_m =
    "bw4-m"


{-| bw5_m
-}
bw5_m : String
bw5_m =
    "bw5-m"


{-| bt_0_m
-}
bt_0_m : String
bt_0_m =
    "bt-0-m"


{-| br_0_m
-}
br_0_m : String
br_0_m =
    "br-0-m"


{-| bb_0_m
-}
bb_0_m : String
bb_0_m =
    "bb-0-m"


{-| bl_0_m
-}
bl_0_m : String
bl_0_m =
    "bl-0-m"


{-| bw0_l
-}
bw0_l : String
bw0_l =
    "bw0-l"


{-| bw1_l
-}
bw1_l : String
bw1_l =
    "bw1-l"


{-| bw2_l
-}
bw2_l : String
bw2_l =
    "bw2-l"


{-| bw3_l
-}
bw3_l : String
bw3_l =
    "bw3-l"


{-| bw4_l
-}
bw4_l : String
bw4_l =
    "bw4-l"


{-| bw5_l
-}
bw5_l : String
bw5_l =
    "bw5-l"


{-| bt_0_l
-}
bt_0_l : String
bt_0_l =
    "bt-0-l"


{-| br_0_l
-}
br_0_l : String
br_0_l =
    "br-0-l"


{-| bb_0_l
-}
bb_0_l : String
bb_0_l =
    "bb-0-l"


{-| bl_0_l
-}
bl_0_l : String
bl_0_l =
    "bl-0-l"


{-| shadow_1
-}
shadow_1 : String
shadow_1 =
    "shadow-1"


{-| shadow_2
-}
shadow_2 : String
shadow_2 =
    "shadow-2"


{-| shadow_3
-}
shadow_3 : String
shadow_3 =
    "shadow-3"


{-| shadow_4
-}
shadow_4 : String
shadow_4 =
    "shadow-4"


{-| shadow_5
-}
shadow_5 : String
shadow_5 =
    "shadow-5"


{-| shadow_1_ns
-}
shadow_1_ns : String
shadow_1_ns =
    "shadow-1-ns"


{-| shadow_2_ns
-}
shadow_2_ns : String
shadow_2_ns =
    "shadow-2-ns"


{-| shadow_3_ns
-}
shadow_3_ns : String
shadow_3_ns =
    "shadow-3-ns"


{-| shadow_4_ns
-}
shadow_4_ns : String
shadow_4_ns =
    "shadow-4-ns"


{-| shadow_5_ns
-}
shadow_5_ns : String
shadow_5_ns =
    "shadow-5-ns"


{-| shadow_1_m
-}
shadow_1_m : String
shadow_1_m =
    "shadow-1-m"


{-| shadow_2_m
-}
shadow_2_m : String
shadow_2_m =
    "shadow-2-m"


{-| shadow_3_m
-}
shadow_3_m : String
shadow_3_m =
    "shadow-3-m"


{-| shadow_4_m
-}
shadow_4_m : String
shadow_4_m =
    "shadow-4-m"


{-| shadow_5_m
-}
shadow_5_m : String
shadow_5_m =
    "shadow-5-m"


{-| shadow_1_l
-}
shadow_1_l : String
shadow_1_l =
    "shadow-1-l"


{-| shadow_2_l
-}
shadow_2_l : String
shadow_2_l =
    "shadow-2-l"


{-| shadow_3_l
-}
shadow_3_l : String
shadow_3_l =
    "shadow-3-l"


{-| shadow_4_l
-}
shadow_4_l : String
shadow_4_l =
    "shadow-4-l"


{-| shadow_5_l
-}
shadow_5_l : String
shadow_5_l =
    "shadow-5-l"


{-| top_0
-}
top_0 : String
top_0 =
    "top-0"


{-| right_0
-}
right_0 : String
right_0 =
    "right-0"


{-| bottom_0
-}
bottom_0 : String
bottom_0 =
    "bottom-0"


{-| left_0
-}
left_0 : String
left_0 =
    "left-0"


{-| top_1
-}
top_1 : String
top_1 =
    "top-1"


{-| right_1
-}
right_1 : String
right_1 =
    "right-1"


{-| bottom_1
-}
bottom_1 : String
bottom_1 =
    "bottom-1"


{-| left_1
-}
left_1 : String
left_1 =
    "left-1"


{-| top_2
-}
top_2 : String
top_2 =
    "top-2"


{-| right_2
-}
right_2 : String
right_2 =
    "right-2"


{-| bottom_2
-}
bottom_2 : String
bottom_2 =
    "bottom-2"


{-| left_2
-}
left_2 : String
left_2 =
    "left-2"


{-| top__1
-}
top__1 : String
top__1 =
    "top--1"


{-| right__1
-}
right__1 : String
right__1 =
    "right--1"


{-| bottom__1
-}
bottom__1 : String
bottom__1 =
    "bottom--1"


{-| left__1
-}
left__1 : String
left__1 =
    "left--1"


{-| top__2
-}
top__2 : String
top__2 =
    "top--2"


{-| right__2
-}
right__2 : String
right__2 =
    "right--2"


{-| bottom__2
-}
bottom__2 : String
bottom__2 =
    "bottom--2"


{-| left__2
-}
left__2 : String
left__2 =
    "left--2"


{-| absolute__fill
-}
absolute__fill : String
absolute__fill =
    "absolute--fill"


{-| top_0_ns
-}
top_0_ns : String
top_0_ns =
    "top-0-ns"


{-| left_0_ns
-}
left_0_ns : String
left_0_ns =
    "left-0-ns"


{-| right_0_ns
-}
right_0_ns : String
right_0_ns =
    "right-0-ns"


{-| bottom_0_ns
-}
bottom_0_ns : String
bottom_0_ns =
    "bottom-0-ns"


{-| top_1_ns
-}
top_1_ns : String
top_1_ns =
    "top-1-ns"


{-| left_1_ns
-}
left_1_ns : String
left_1_ns =
    "left-1-ns"


{-| right_1_ns
-}
right_1_ns : String
right_1_ns =
    "right-1-ns"


{-| bottom_1_ns
-}
bottom_1_ns : String
bottom_1_ns =
    "bottom-1-ns"


{-| top_2_ns
-}
top_2_ns : String
top_2_ns =
    "top-2-ns"


{-| left_2_ns
-}
left_2_ns : String
left_2_ns =
    "left-2-ns"


{-| right_2_ns
-}
right_2_ns : String
right_2_ns =
    "right-2-ns"


{-| bottom_2_ns
-}
bottom_2_ns : String
bottom_2_ns =
    "bottom-2-ns"


{-| top__1_ns
-}
top__1_ns : String
top__1_ns =
    "top--1-ns"


{-| right__1_ns
-}
right__1_ns : String
right__1_ns =
    "right--1-ns"


{-| bottom__1_ns
-}
bottom__1_ns : String
bottom__1_ns =
    "bottom--1-ns"


{-| left__1_ns
-}
left__1_ns : String
left__1_ns =
    "left--1-ns"


{-| top__2_ns
-}
top__2_ns : String
top__2_ns =
    "top--2-ns"


{-| right__2_ns
-}
right__2_ns : String
right__2_ns =
    "right--2-ns"


{-| bottom__2_ns
-}
bottom__2_ns : String
bottom__2_ns =
    "bottom--2-ns"


{-| left__2_ns
-}
left__2_ns : String
left__2_ns =
    "left--2-ns"


{-| absolute__fill_ns
-}
absolute__fill_ns : String
absolute__fill_ns =
    "absolute--fill-ns"


{-| top_0_m
-}
top_0_m : String
top_0_m =
    "top-0-m"


{-| left_0_m
-}
left_0_m : String
left_0_m =
    "left-0-m"


{-| right_0_m
-}
right_0_m : String
right_0_m =
    "right-0-m"


{-| bottom_0_m
-}
bottom_0_m : String
bottom_0_m =
    "bottom-0-m"


{-| top_1_m
-}
top_1_m : String
top_1_m =
    "top-1-m"


{-| left_1_m
-}
left_1_m : String
left_1_m =
    "left-1-m"


{-| right_1_m
-}
right_1_m : String
right_1_m =
    "right-1-m"


{-| bottom_1_m
-}
bottom_1_m : String
bottom_1_m =
    "bottom-1-m"


{-| top_2_m
-}
top_2_m : String
top_2_m =
    "top-2-m"


{-| left_2_m
-}
left_2_m : String
left_2_m =
    "left-2-m"


{-| right_2_m
-}
right_2_m : String
right_2_m =
    "right-2-m"


{-| bottom_2_m
-}
bottom_2_m : String
bottom_2_m =
    "bottom-2-m"


{-| top__1_m
-}
top__1_m : String
top__1_m =
    "top--1-m"


{-| right__1_m
-}
right__1_m : String
right__1_m =
    "right--1-m"


{-| bottom__1_m
-}
bottom__1_m : String
bottom__1_m =
    "bottom--1-m"


{-| left__1_m
-}
left__1_m : String
left__1_m =
    "left--1-m"


{-| top__2_m
-}
top__2_m : String
top__2_m =
    "top--2-m"


{-| right__2_m
-}
right__2_m : String
right__2_m =
    "right--2-m"


{-| bottom__2_m
-}
bottom__2_m : String
bottom__2_m =
    "bottom--2-m"


{-| left__2_m
-}
left__2_m : String
left__2_m =
    "left--2-m"


{-| absolute__fill_m
-}
absolute__fill_m : String
absolute__fill_m =
    "absolute--fill-m"


{-| top_0_l
-}
top_0_l : String
top_0_l =
    "top-0-l"


{-| left_0_l
-}
left_0_l : String
left_0_l =
    "left-0-l"


{-| right_0_l
-}
right_0_l : String
right_0_l =
    "right-0-l"


{-| bottom_0_l
-}
bottom_0_l : String
bottom_0_l =
    "bottom-0-l"


{-| top_1_l
-}
top_1_l : String
top_1_l =
    "top-1-l"


{-| left_1_l
-}
left_1_l : String
left_1_l =
    "left-1-l"


{-| right_1_l
-}
right_1_l : String
right_1_l =
    "right-1-l"


{-| bottom_1_l
-}
bottom_1_l : String
bottom_1_l =
    "bottom-1-l"


{-| top_2_l
-}
top_2_l : String
top_2_l =
    "top-2-l"


{-| left_2_l
-}
left_2_l : String
left_2_l =
    "left-2-l"


{-| right_2_l
-}
right_2_l : String
right_2_l =
    "right-2-l"


{-| bottom_2_l
-}
bottom_2_l : String
bottom_2_l =
    "bottom-2-l"


{-| top__1_l
-}
top__1_l : String
top__1_l =
    "top--1-l"


{-| right__1_l
-}
right__1_l : String
right__1_l =
    "right--1-l"


{-| bottom__1_l
-}
bottom__1_l : String
bottom__1_l =
    "bottom--1-l"


{-| left__1_l
-}
left__1_l : String
left__1_l =
    "left--1-l"


{-| top__2_l
-}
top__2_l : String
top__2_l =
    "top--2-l"


{-| right__2_l
-}
right__2_l : String
right__2_l =
    "right--2-l"


{-| bottom__2_l
-}
bottom__2_l : String
bottom__2_l =
    "bottom--2-l"


{-| left__2_l
-}
left__2_l : String
left__2_l =
    "left--2-l"


{-| absolute__fill_l
-}
absolute__fill_l : String
absolute__fill_l =
    "absolute--fill-l"


{-| cfd
-}
cfd : String
cfd =
    "cfd"


{-| cf
-}
cf : String
cf =
    "cf"


{-| cl
-}
cl : String
cl =
    "cl"


{-| cr
-}
cr : String
cr =
    "cr"


{-| cb
-}
cb : String
cb =
    "cb"


{-| cn
-}
cn : String
cn =
    "cn"


{-| cl_ns
-}
cl_ns : String
cl_ns =
    "cl-ns"


{-| cr_ns
-}
cr_ns : String
cr_ns =
    "cr-ns"


{-| cb_ns
-}
cb_ns : String
cb_ns =
    "cb-ns"


{-| cn_ns
-}
cn_ns : String
cn_ns =
    "cn-ns"


{-| cl_m
-}
cl_m : String
cl_m =
    "cl-m"


{-| cr_m
-}
cr_m : String
cr_m =
    "cr-m"


{-| cb_m
-}
cb_m : String
cb_m =
    "cb-m"


{-| cn_m
-}
cn_m : String
cn_m =
    "cn-m"


{-| cl_l
-}
cl_l : String
cl_l =
    "cl-l"


{-| cr_l
-}
cr_l : String
cr_l =
    "cr-l"


{-| cb_l
-}
cb_l : String
cb_l =
    "cb-l"


{-| cn_l
-}
cn_l : String
cn_l =
    "cn-l"


{-| dn
-}
dn : String
dn =
    "dn"


{-| di
-}
di : String
di =
    "di"


{-| db
-}
db : String
db =
    "db"


{-| dib
-}
dib : String
dib =
    "dib"


{-| dit
-}
dit : String
dit =
    "dit"


{-| dt
-}
dt : String
dt =
    "dt"


{-| dtc
-}
dtc : String
dtc =
    "dtc"


{-| dt_row
-}
dt_row : String
dt_row =
    "dt-row"


{-| dt_row_group
-}
dt_row_group : String
dt_row_group =
    "dt-row-group"


{-| dt_column
-}
dt_column : String
dt_column =
    "dt-column"


{-| dt_column_group
-}
dt_column_group : String
dt_column_group =
    "dt-column-group"


{-| dt__fixed
-}
dt__fixed : String
dt__fixed =
    "dt--fixed"


{-| dn_ns
-}
dn_ns : String
dn_ns =
    "dn-ns"


{-| di_ns
-}
di_ns : String
di_ns =
    "di-ns"


{-| db_ns
-}
db_ns : String
db_ns =
    "db-ns"


{-| dib_ns
-}
dib_ns : String
dib_ns =
    "dib-ns"


{-| dit_ns
-}
dit_ns : String
dit_ns =
    "dit-ns"


{-| dt_ns
-}
dt_ns : String
dt_ns =
    "dt-ns"


{-| dtc_ns
-}
dtc_ns : String
dtc_ns =
    "dtc-ns"


{-| dt_row_ns
-}
dt_row_ns : String
dt_row_ns =
    "dt-row-ns"


{-| dt_row_group_ns
-}
dt_row_group_ns : String
dt_row_group_ns =
    "dt-row-group-ns"


{-| dt_column_ns
-}
dt_column_ns : String
dt_column_ns =
    "dt-column-ns"


{-| dt_column_group_ns
-}
dt_column_group_ns : String
dt_column_group_ns =
    "dt-column-group-ns"


{-| dt__fixed_ns
-}
dt__fixed_ns : String
dt__fixed_ns =
    "dt--fixed-ns"


{-| dn_m
-}
dn_m : String
dn_m =
    "dn-m"


{-| di_m
-}
di_m : String
di_m =
    "di-m"


{-| db_m
-}
db_m : String
db_m =
    "db-m"


{-| dib_m
-}
dib_m : String
dib_m =
    "dib-m"


{-| dit_m
-}
dit_m : String
dit_m =
    "dit-m"


{-| dt_m
-}
dt_m : String
dt_m =
    "dt-m"


{-| dtc_m
-}
dtc_m : String
dtc_m =
    "dtc-m"


{-| dt_row_m
-}
dt_row_m : String
dt_row_m =
    "dt-row-m"


{-| dt_row_group_m
-}
dt_row_group_m : String
dt_row_group_m =
    "dt-row-group-m"


{-| dt_column_m
-}
dt_column_m : String
dt_column_m =
    "dt-column-m"


{-| dt_column_group_m
-}
dt_column_group_m : String
dt_column_group_m =
    "dt-column-group-m"


{-| dt__fixed_m
-}
dt__fixed_m : String
dt__fixed_m =
    "dt--fixed-m"


{-| dn_l
-}
dn_l : String
dn_l =
    "dn-l"


{-| di_l
-}
di_l : String
di_l =
    "di-l"


{-| db_l
-}
db_l : String
db_l =
    "db-l"


{-| dib_l
-}
dib_l : String
dib_l =
    "dib-l"


{-| dit_l
-}
dit_l : String
dit_l =
    "dit-l"


{-| dt_l
-}
dt_l : String
dt_l =
    "dt-l"


{-| dtc_l
-}
dtc_l : String
dtc_l =
    "dtc-l"


{-| dt_row_l
-}
dt_row_l : String
dt_row_l =
    "dt-row-l"


{-| dt_row_group_l
-}
dt_row_group_l : String
dt_row_group_l =
    "dt-row-group-l"


{-| dt_column_l
-}
dt_column_l : String
dt_column_l =
    "dt-column-l"


{-| dt_column_group_l
-}
dt_column_group_l : String
dt_column_group_l =
    "dt-column-group-l"


{-| dt__fixed_l
-}
dt__fixed_l : String
dt__fixed_l =
    "dt--fixed-l"


{-| flex
-}
flex : String
flex =
    "flex"


{-| inline_flex
-}
inline_flex : String
inline_flex =
    "inline-flex"


{-| flex_auto
-}
flex_auto : String
flex_auto =
    "flex-auto"


{-| flex_none
-}
flex_none : String
flex_none =
    "flex-none"


{-| flex_column
-}
flex_column : String
flex_column =
    "flex-column"


{-| flex_row
-}
flex_row : String
flex_row =
    "flex-row"


{-| flex_wrap
-}
flex_wrap : String
flex_wrap =
    "flex-wrap"


{-| flex_column_reverse
-}
flex_column_reverse : String
flex_column_reverse =
    "flex-column-reverse"


{-| flex_row_reverse
-}
flex_row_reverse : String
flex_row_reverse =
    "flex-row-reverse"


{-| flex_wrap_reverse
-}
flex_wrap_reverse : String
flex_wrap_reverse =
    "flex-wrap-reverse"


{-| items_start
-}
items_start : String
items_start =
    "items-start"


{-| items_end
-}
items_end : String
items_end =
    "items-end"


{-| items_center
-}
items_center : String
items_center =
    "items-center"


{-| items_baseline
-}
items_baseline : String
items_baseline =
    "items-baseline"


{-| items_stretch
-}
items_stretch : String
items_stretch =
    "items-stretch"


{-| self_start
-}
self_start : String
self_start =
    "self-start"


{-| self_end
-}
self_end : String
self_end =
    "self-end"


{-| self_center
-}
self_center : String
self_center =
    "self-center"


{-| self_baseline
-}
self_baseline : String
self_baseline =
    "self-baseline"


{-| self_stretch
-}
self_stretch : String
self_stretch =
    "self-stretch"


{-| justify_start
-}
justify_start : String
justify_start =
    "justify-start"


{-| justify_end
-}
justify_end : String
justify_end =
    "justify-end"


{-| justify_center
-}
justify_center : String
justify_center =
    "justify-center"


{-| justify_between
-}
justify_between : String
justify_between =
    "justify-between"


{-| justify_around
-}
justify_around : String
justify_around =
    "justify-around"


{-| content_start
-}
content_start : String
content_start =
    "content-start"


{-| content_end
-}
content_end : String
content_end =
    "content-end"


{-| content_center
-}
content_center : String
content_center =
    "content-center"


{-| content_between
-}
content_between : String
content_between =
    "content-between"


{-| content_around
-}
content_around : String
content_around =
    "content-around"


{-| content_stretch
-}
content_stretch : String
content_stretch =
    "content-stretch"


{-| order_0
-}
order_0 : String
order_0 =
    "order-0"


{-| order_1
-}
order_1 : String
order_1 =
    "order-1"


{-| order_2
-}
order_2 : String
order_2 =
    "order-2"


{-| order_3
-}
order_3 : String
order_3 =
    "order-3"


{-| order_4
-}
order_4 : String
order_4 =
    "order-4"


{-| order_5
-}
order_5 : String
order_5 =
    "order-5"


{-| order_6
-}
order_6 : String
order_6 =
    "order-6"


{-| order_7
-}
order_7 : String
order_7 =
    "order-7"


{-| order_8
-}
order_8 : String
order_8 =
    "order-8"


{-| order_last
-}
order_last : String
order_last =
    "order-last"


{-| flex_ns
-}
flex_ns : String
flex_ns =
    "flex-ns"


{-| inline_flex_ns
-}
inline_flex_ns : String
inline_flex_ns =
    "inline-flex-ns"


{-| flex_auto_ns
-}
flex_auto_ns : String
flex_auto_ns =
    "flex-auto-ns"


{-| flex_none_ns
-}
flex_none_ns : String
flex_none_ns =
    "flex-none-ns"


{-| flex_column_ns
-}
flex_column_ns : String
flex_column_ns =
    "flex-column-ns"


{-| flex_row_ns
-}
flex_row_ns : String
flex_row_ns =
    "flex-row-ns"


{-| flex_wrap_ns
-}
flex_wrap_ns : String
flex_wrap_ns =
    "flex-wrap-ns"


{-| flex_column_reverse_ns
-}
flex_column_reverse_ns : String
flex_column_reverse_ns =
    "flex-column-reverse-ns"


{-| flex_row_reverse_ns
-}
flex_row_reverse_ns : String
flex_row_reverse_ns =
    "flex-row-reverse-ns"


{-| flex_wrap_reverse_ns
-}
flex_wrap_reverse_ns : String
flex_wrap_reverse_ns =
    "flex-wrap-reverse-ns"


{-| items_start_ns
-}
items_start_ns : String
items_start_ns =
    "items-start-ns"


{-| items_end_ns
-}
items_end_ns : String
items_end_ns =
    "items-end-ns"


{-| items_center_ns
-}
items_center_ns : String
items_center_ns =
    "items-center-ns"


{-| items_baseline_ns
-}
items_baseline_ns : String
items_baseline_ns =
    "items-baseline-ns"


{-| items_stretch_ns
-}
items_stretch_ns : String
items_stretch_ns =
    "items-stretch-ns"


{-| self_start_ns
-}
self_start_ns : String
self_start_ns =
    "self-start-ns"


{-| self_end_ns
-}
self_end_ns : String
self_end_ns =
    "self-end-ns"


{-| self_center_ns
-}
self_center_ns : String
self_center_ns =
    "self-center-ns"


{-| self_baseline_ns
-}
self_baseline_ns : String
self_baseline_ns =
    "self-baseline-ns"


{-| self_stretch_ns
-}
self_stretch_ns : String
self_stretch_ns =
    "self-stretch-ns"


{-| justify_start_ns
-}
justify_start_ns : String
justify_start_ns =
    "justify-start-ns"


{-| justify_end_ns
-}
justify_end_ns : String
justify_end_ns =
    "justify-end-ns"


{-| justify_center_ns
-}
justify_center_ns : String
justify_center_ns =
    "justify-center-ns"


{-| justify_between_ns
-}
justify_between_ns : String
justify_between_ns =
    "justify-between-ns"


{-| justify_around_ns
-}
justify_around_ns : String
justify_around_ns =
    "justify-around-ns"


{-| content_start_ns
-}
content_start_ns : String
content_start_ns =
    "content-start-ns"


{-| content_end_ns
-}
content_end_ns : String
content_end_ns =
    "content-end-ns"


{-| content_center_ns
-}
content_center_ns : String
content_center_ns =
    "content-center-ns"


{-| content_between_ns
-}
content_between_ns : String
content_between_ns =
    "content-between-ns"


{-| content_around_ns
-}
content_around_ns : String
content_around_ns =
    "content-around-ns"


{-| content_stretch_ns
-}
content_stretch_ns : String
content_stretch_ns =
    "content-stretch-ns"


{-| order_0_ns
-}
order_0_ns : String
order_0_ns =
    "order-0-ns"


{-| order_1_ns
-}
order_1_ns : String
order_1_ns =
    "order-1-ns"


{-| order_2_ns
-}
order_2_ns : String
order_2_ns =
    "order-2-ns"


{-| order_3_ns
-}
order_3_ns : String
order_3_ns =
    "order-3-ns"


{-| order_4_ns
-}
order_4_ns : String
order_4_ns =
    "order-4-ns"


{-| order_5_ns
-}
order_5_ns : String
order_5_ns =
    "order-5-ns"


{-| order_6_ns
-}
order_6_ns : String
order_6_ns =
    "order-6-ns"


{-| order_7_ns
-}
order_7_ns : String
order_7_ns =
    "order-7-ns"


{-| order_8_ns
-}
order_8_ns : String
order_8_ns =
    "order-8-ns"


{-| order_last_ns
-}
order_last_ns : String
order_last_ns =
    "order-last-ns"


{-| flex_m
-}
flex_m : String
flex_m =
    "flex-m"


{-| inline_flex_m
-}
inline_flex_m : String
inline_flex_m =
    "inline-flex-m"


{-| flex_auto_m
-}
flex_auto_m : String
flex_auto_m =
    "flex-auto-m"


{-| flex_none_m
-}
flex_none_m : String
flex_none_m =
    "flex-none-m"


{-| flex_column_m
-}
flex_column_m : String
flex_column_m =
    "flex-column-m"


{-| flex_row_m
-}
flex_row_m : String
flex_row_m =
    "flex-row-m"


{-| flex_wrap_m
-}
flex_wrap_m : String
flex_wrap_m =
    "flex-wrap-m"


{-| flex_column_reverse_m
-}
flex_column_reverse_m : String
flex_column_reverse_m =
    "flex-column-reverse-m"


{-| flex_row_reverse_m
-}
flex_row_reverse_m : String
flex_row_reverse_m =
    "flex-row-reverse-m"


{-| flex_wrap_reverse_m
-}
flex_wrap_reverse_m : String
flex_wrap_reverse_m =
    "flex-wrap-reverse-m"


{-| items_start_m
-}
items_start_m : String
items_start_m =
    "items-start-m"


{-| items_end_m
-}
items_end_m : String
items_end_m =
    "items-end-m"


{-| items_center_m
-}
items_center_m : String
items_center_m =
    "items-center-m"


{-| items_baseline_m
-}
items_baseline_m : String
items_baseline_m =
    "items-baseline-m"


{-| items_stretch_m
-}
items_stretch_m : String
items_stretch_m =
    "items-stretch-m"


{-| self_start_m
-}
self_start_m : String
self_start_m =
    "self-start-m"


{-| self_end_m
-}
self_end_m : String
self_end_m =
    "self-end-m"


{-| self_center_m
-}
self_center_m : String
self_center_m =
    "self-center-m"


{-| self_baseline_m
-}
self_baseline_m : String
self_baseline_m =
    "self-baseline-m"


{-| self_stretch_m
-}
self_stretch_m : String
self_stretch_m =
    "self-stretch-m"


{-| justify_start_m
-}
justify_start_m : String
justify_start_m =
    "justify-start-m"


{-| justify_end_m
-}
justify_end_m : String
justify_end_m =
    "justify-end-m"


{-| justify_center_m
-}
justify_center_m : String
justify_center_m =
    "justify-center-m"


{-| justify_between_m
-}
justify_between_m : String
justify_between_m =
    "justify-between-m"


{-| justify_around_m
-}
justify_around_m : String
justify_around_m =
    "justify-around-m"


{-| content_start_m
-}
content_start_m : String
content_start_m =
    "content-start-m"


{-| content_end_m
-}
content_end_m : String
content_end_m =
    "content-end-m"


{-| content_center_m
-}
content_center_m : String
content_center_m =
    "content-center-m"


{-| content_between_m
-}
content_between_m : String
content_between_m =
    "content-between-m"


{-| content_around_m
-}
content_around_m : String
content_around_m =
    "content-around-m"


{-| content_stretch_m
-}
content_stretch_m : String
content_stretch_m =
    "content-stretch-m"


{-| order_0_m
-}
order_0_m : String
order_0_m =
    "order-0-m"


{-| order_1_m
-}
order_1_m : String
order_1_m =
    "order-1-m"


{-| order_2_m
-}
order_2_m : String
order_2_m =
    "order-2-m"


{-| order_3_m
-}
order_3_m : String
order_3_m =
    "order-3-m"


{-| order_4_m
-}
order_4_m : String
order_4_m =
    "order-4-m"


{-| order_5_m
-}
order_5_m : String
order_5_m =
    "order-5-m"


{-| order_6_m
-}
order_6_m : String
order_6_m =
    "order-6-m"


{-| order_7_m
-}
order_7_m : String
order_7_m =
    "order-7-m"


{-| order_8_m
-}
order_8_m : String
order_8_m =
    "order-8-m"


{-| order_last_m
-}
order_last_m : String
order_last_m =
    "order-last-m"


{-| flex_l
-}
flex_l : String
flex_l =
    "flex-l"


{-| inline_flex_l
-}
inline_flex_l : String
inline_flex_l =
    "inline-flex-l"


{-| flex_auto_l
-}
flex_auto_l : String
flex_auto_l =
    "flex-auto-l"


{-| flex_none_l
-}
flex_none_l : String
flex_none_l =
    "flex-none-l"


{-| flex_column_l
-}
flex_column_l : String
flex_column_l =
    "flex-column-l"


{-| flex_row_l
-}
flex_row_l : String
flex_row_l =
    "flex-row-l"


{-| flex_wrap_l
-}
flex_wrap_l : String
flex_wrap_l =
    "flex-wrap-l"


{-| flex_column_reverse_l
-}
flex_column_reverse_l : String
flex_column_reverse_l =
    "flex-column-reverse-l"


{-| flex_row_reverse_l
-}
flex_row_reverse_l : String
flex_row_reverse_l =
    "flex-row-reverse-l"


{-| flex_wrap_reverse_l
-}
flex_wrap_reverse_l : String
flex_wrap_reverse_l =
    "flex-wrap-reverse-l"


{-| items_start_l
-}
items_start_l : String
items_start_l =
    "items-start-l"


{-| items_end_l
-}
items_end_l : String
items_end_l =
    "items-end-l"


{-| items_center_l
-}
items_center_l : String
items_center_l =
    "items-center-l"


{-| items_baseline_l
-}
items_baseline_l : String
items_baseline_l =
    "items-baseline-l"


{-| items_stretch_l
-}
items_stretch_l : String
items_stretch_l =
    "items-stretch-l"


{-| self_start_l
-}
self_start_l : String
self_start_l =
    "self-start-l"


{-| self_end_l
-}
self_end_l : String
self_end_l =
    "self-end-l"


{-| self_center_l
-}
self_center_l : String
self_center_l =
    "self-center-l"


{-| self_baseline_l
-}
self_baseline_l : String
self_baseline_l =
    "self-baseline-l"


{-| self_stretch_l
-}
self_stretch_l : String
self_stretch_l =
    "self-stretch-l"


{-| justify_start_l
-}
justify_start_l : String
justify_start_l =
    "justify-start-l"


{-| justify_end_l
-}
justify_end_l : String
justify_end_l =
    "justify-end-l"


{-| justify_center_l
-}
justify_center_l : String
justify_center_l =
    "justify-center-l"


{-| justify_between_l
-}
justify_between_l : String
justify_between_l =
    "justify-between-l"


{-| justify_around_l
-}
justify_around_l : String
justify_around_l =
    "justify-around-l"


{-| content_start_l
-}
content_start_l : String
content_start_l =
    "content-start-l"


{-| content_end_l
-}
content_end_l : String
content_end_l =
    "content-end-l"


{-| content_center_l
-}
content_center_l : String
content_center_l =
    "content-center-l"


{-| content_between_l
-}
content_between_l : String
content_between_l =
    "content-between-l"


{-| content_around_l
-}
content_around_l : String
content_around_l =
    "content-around-l"


{-| content_stretch_l
-}
content_stretch_l : String
content_stretch_l =
    "content-stretch-l"


{-| order_0_l
-}
order_0_l : String
order_0_l =
    "order-0-l"


{-| order_1_l
-}
order_1_l : String
order_1_l =
    "order-1-l"


{-| order_2_l
-}
order_2_l : String
order_2_l =
    "order-2-l"


{-| order_3_l
-}
order_3_l : String
order_3_l =
    "order-3-l"


{-| order_4_l
-}
order_4_l : String
order_4_l =
    "order-4-l"


{-| order_5_l
-}
order_5_l : String
order_5_l =
    "order-5-l"


{-| order_6_l
-}
order_6_l : String
order_6_l =
    "order-6-l"


{-| order_7_l
-}
order_7_l : String
order_7_l =
    "order-7-l"


{-| order_8_l
-}
order_8_l : String
order_8_l =
    "order-8-l"


{-| order_last_l
-}
order_last_l : String
order_last_l =
    "order-last-l"


{-| fl
-}
fl : String
fl =
    "fl"


{-| fr
-}
fr : String
fr =
    "fr"


{-| fn
-}
fn : String
fn =
    "fn"


{-| fl_ns
-}
fl_ns : String
fl_ns =
    "fl-ns"


{-| fr_ns
-}
fr_ns : String
fr_ns =
    "fr-ns"


{-| fn_ns
-}
fn_ns : String
fn_ns =
    "fn-ns"


{-| fl_m
-}
fl_m : String
fl_m =
    "fl-m"


{-| fr_m
-}
fr_m : String
fr_m =
    "fr-m"


{-| fn_m
-}
fn_m : String
fn_m =
    "fn-m"


{-| fl_l
-}
fl_l : String
fl_l =
    "fl-l"


{-| fr_l
-}
fr_l : String
fr_l =
    "fr-l"


{-| fn_l
-}
fn_l : String
fn_l =
    "fn-l"


{-| sans_serif
-}
sans_serif : String
sans_serif =
    "sans-serif"


{-| serif
-}
serif : String
serif =
    "serif"


{-| system_sans_serif
-}
system_sans_serif : String
system_sans_serif =
    "system-sans-serif"


{-| system_serif
-}
system_serif : String
system_serif =
    "system-serif"


{-| courier
-}
courier : String
courier =
    "courier"


{-| helvetica
-}
helvetica : String
helvetica =
    "helvetica"


{-| avenir
-}
avenir : String
avenir =
    "avenir"


{-| athelas
-}
athelas : String
athelas =
    "athelas"


{-| georgia
-}
georgia : String
georgia =
    "georgia"


{-| times
-}
times : String
times =
    "times"


{-| bodoni
-}
bodoni : String
bodoni =
    "bodoni"


{-| calisto
-}
calisto : String
calisto =
    "calisto"


{-| garamond
-}
garamond : String
garamond =
    "garamond"


{-| baskerville
-}
baskerville : String
baskerville =
    "baskerville"


{-| i
-}
i : String
i =
    "i"


{-| fs_normal
-}
fs_normal : String
fs_normal =
    "fs-normal"


{-| i_ns
-}
i_ns : String
i_ns =
    "i-ns"


{-| fs_normal_ns
-}
fs_normal_ns : String
fs_normal_ns =
    "fs-normal-ns"


{-| i_m
-}
i_m : String
i_m =
    "i-m"


{-| fs_normal_m
-}
fs_normal_m : String
fs_normal_m =
    "fs-normal-m"


{-| i_l
-}
i_l : String
i_l =
    "i-l"


{-| fs_normal_l
-}
fs_normal_l : String
fs_normal_l =
    "fs-normal-l"


{-| normal
-}
normal : String
normal =
    "normal"


{-| b
-}
b : String
b =
    "b"


{-| fw1
-}
fw1 : String
fw1 =
    "fw1"


{-| fw2
-}
fw2 : String
fw2 =
    "fw2"


{-| fw3
-}
fw3 : String
fw3 =
    "fw3"


{-| fw4
-}
fw4 : String
fw4 =
    "fw4"


{-| fw5
-}
fw5 : String
fw5 =
    "fw5"


{-| fw6
-}
fw6 : String
fw6 =
    "fw6"


{-| fw7
-}
fw7 : String
fw7 =
    "fw7"


{-| fw8
-}
fw8 : String
fw8 =
    "fw8"


{-| fw9
-}
fw9 : String
fw9 =
    "fw9"


{-| normal_ns
-}
normal_ns : String
normal_ns =
    "normal-ns"


{-| b_ns
-}
b_ns : String
b_ns =
    "b-ns"


{-| fw1_ns
-}
fw1_ns : String
fw1_ns =
    "fw1-ns"


{-| fw2_ns
-}
fw2_ns : String
fw2_ns =
    "fw2-ns"


{-| fw3_ns
-}
fw3_ns : String
fw3_ns =
    "fw3-ns"


{-| fw4_ns
-}
fw4_ns : String
fw4_ns =
    "fw4-ns"


{-| fw5_ns
-}
fw5_ns : String
fw5_ns =
    "fw5-ns"


{-| fw6_ns
-}
fw6_ns : String
fw6_ns =
    "fw6-ns"


{-| fw7_ns
-}
fw7_ns : String
fw7_ns =
    "fw7-ns"


{-| fw8_ns
-}
fw8_ns : String
fw8_ns =
    "fw8-ns"


{-| fw9_ns
-}
fw9_ns : String
fw9_ns =
    "fw9-ns"


{-| normal_m
-}
normal_m : String
normal_m =
    "normal-m"


{-| b_m
-}
b_m : String
b_m =
    "b-m"


{-| fw1_m
-}
fw1_m : String
fw1_m =
    "fw1-m"


{-| fw2_m
-}
fw2_m : String
fw2_m =
    "fw2-m"


{-| fw3_m
-}
fw3_m : String
fw3_m =
    "fw3-m"


{-| fw4_m
-}
fw4_m : String
fw4_m =
    "fw4-m"


{-| fw5_m
-}
fw5_m : String
fw5_m =
    "fw5-m"


{-| fw6_m
-}
fw6_m : String
fw6_m =
    "fw6-m"


{-| fw7_m
-}
fw7_m : String
fw7_m =
    "fw7-m"


{-| fw8_m
-}
fw8_m : String
fw8_m =
    "fw8-m"


{-| fw9_m
-}
fw9_m : String
fw9_m =
    "fw9-m"


{-| normal_l
-}
normal_l : String
normal_l =
    "normal-l"


{-| b_l
-}
b_l : String
b_l =
    "b-l"


{-| fw1_l
-}
fw1_l : String
fw1_l =
    "fw1-l"


{-| fw2_l
-}
fw2_l : String
fw2_l =
    "fw2-l"


{-| fw3_l
-}
fw3_l : String
fw3_l =
    "fw3-l"


{-| fw4_l
-}
fw4_l : String
fw4_l =
    "fw4-l"


{-| fw5_l
-}
fw5_l : String
fw5_l =
    "fw5-l"


{-| fw6_l
-}
fw6_l : String
fw6_l =
    "fw6-l"


{-| fw7_l
-}
fw7_l : String
fw7_l =
    "fw7-l"


{-| fw8_l
-}
fw8_l : String
fw8_l =
    "fw8-l"


{-| fw9_l
-}
fw9_l : String
fw9_l =
    "fw9-l"


{-| input_reset
-}
input_reset : String
input_reset =
    "input-reset"


{-| button_resetd
-}
button_resetd : String
button_resetd =
    "button-resetd"


{-| input_resetd
-}
input_resetd : String
input_resetd =
    "input-resetd"


{-| h1
-}
h1 : String
h1 =
    "h1"


{-| h2
-}
h2 : String
h2 =
    "h2"


{-| h3
-}
h3 : String
h3 =
    "h3"


{-| h4
-}
h4 : String
h4 =
    "h4"


{-| h5
-}
h5 : String
h5 =
    "h5"


{-| h_25
-}
h_25 : String
h_25 =
    "h-25"


{-| h_50
-}
h_50 : String
h_50 =
    "h-50"


{-| h_75
-}
h_75 : String
h_75 =
    "h-75"


{-| h_100
-}
h_100 : String
h_100 =
    "h-100"


{-| min_h_100
-}
min_h_100 : String
min_h_100 =
    "min-h-100"


{-| vh_25
-}
vh_25 : String
vh_25 =
    "vh-25"


{-| vh_50
-}
vh_50 : String
vh_50 =
    "vh-50"


{-| vh_75
-}
vh_75 : String
vh_75 =
    "vh-75"


{-| vh_100
-}
vh_100 : String
vh_100 =
    "vh-100"


{-| min_vh_100
-}
min_vh_100 : String
min_vh_100 =
    "min-vh-100"


{-| h_auto
-}
h_auto : String
h_auto =
    "h-auto"


{-| h_inherit
-}
h_inherit : String
h_inherit =
    "h-inherit"


{-| h1_ns
-}
h1_ns : String
h1_ns =
    "h1-ns"


{-| h2_ns
-}
h2_ns : String
h2_ns =
    "h2-ns"


{-| h3_ns
-}
h3_ns : String
h3_ns =
    "h3-ns"


{-| h4_ns
-}
h4_ns : String
h4_ns =
    "h4-ns"


{-| h5_ns
-}
h5_ns : String
h5_ns =
    "h5-ns"


{-| h_25_ns
-}
h_25_ns : String
h_25_ns =
    "h-25-ns"


{-| h_50_ns
-}
h_50_ns : String
h_50_ns =
    "h-50-ns"


{-| h_75_ns
-}
h_75_ns : String
h_75_ns =
    "h-75-ns"


{-| h_100_ns
-}
h_100_ns : String
h_100_ns =
    "h-100-ns"


{-| min_h_100_ns
-}
min_h_100_ns : String
min_h_100_ns =
    "min-h-100-ns"


{-| vh_25_ns
-}
vh_25_ns : String
vh_25_ns =
    "vh-25-ns"


{-| vh_50_ns
-}
vh_50_ns : String
vh_50_ns =
    "vh-50-ns"


{-| vh_75_ns
-}
vh_75_ns : String
vh_75_ns =
    "vh-75-ns"


{-| vh_100_ns
-}
vh_100_ns : String
vh_100_ns =
    "vh-100-ns"


{-| min_vh_100_ns
-}
min_vh_100_ns : String
min_vh_100_ns =
    "min-vh-100-ns"


{-| h_auto_ns
-}
h_auto_ns : String
h_auto_ns =
    "h-auto-ns"


{-| h_inherit_ns
-}
h_inherit_ns : String
h_inherit_ns =
    "h-inherit-ns"


{-| h1_m
-}
h1_m : String
h1_m =
    "h1-m"


{-| h2_m
-}
h2_m : String
h2_m =
    "h2-m"


{-| h3_m
-}
h3_m : String
h3_m =
    "h3-m"


{-| h4_m
-}
h4_m : String
h4_m =
    "h4-m"


{-| h5_m
-}
h5_m : String
h5_m =
    "h5-m"


{-| h_25_m
-}
h_25_m : String
h_25_m =
    "h-25-m"


{-| h_50_m
-}
h_50_m : String
h_50_m =
    "h-50-m"


{-| h_75_m
-}
h_75_m : String
h_75_m =
    "h-75-m"


{-| h_100_m
-}
h_100_m : String
h_100_m =
    "h-100-m"


{-| min_h_100_m
-}
min_h_100_m : String
min_h_100_m =
    "min-h-100-m"


{-| vh_25_m
-}
vh_25_m : String
vh_25_m =
    "vh-25-m"


{-| vh_50_m
-}
vh_50_m : String
vh_50_m =
    "vh-50-m"


{-| vh_75_m
-}
vh_75_m : String
vh_75_m =
    "vh-75-m"


{-| vh_100_m
-}
vh_100_m : String
vh_100_m =
    "vh-100-m"


{-| min_vh_100_m
-}
min_vh_100_m : String
min_vh_100_m =
    "min-vh-100-m"


{-| h_auto_m
-}
h_auto_m : String
h_auto_m =
    "h-auto-m"


{-| h_inherit_m
-}
h_inherit_m : String
h_inherit_m =
    "h-inherit-m"


{-| h1_l
-}
h1_l : String
h1_l =
    "h1-l"


{-| h2_l
-}
h2_l : String
h2_l =
    "h2-l"


{-| h3_l
-}
h3_l : String
h3_l =
    "h3-l"


{-| h4_l
-}
h4_l : String
h4_l =
    "h4-l"


{-| h5_l
-}
h5_l : String
h5_l =
    "h5-l"


{-| h_25_l
-}
h_25_l : String
h_25_l =
    "h-25-l"


{-| h_50_l
-}
h_50_l : String
h_50_l =
    "h-50-l"


{-| h_75_l
-}
h_75_l : String
h_75_l =
    "h-75-l"


{-| h_100_l
-}
h_100_l : String
h_100_l =
    "h-100-l"


{-| min_h_100_l
-}
min_h_100_l : String
min_h_100_l =
    "min-h-100-l"


{-| vh_25_l
-}
vh_25_l : String
vh_25_l =
    "vh-25-l"


{-| vh_50_l
-}
vh_50_l : String
vh_50_l =
    "vh-50-l"


{-| vh_75_l
-}
vh_75_l : String
vh_75_l =
    "vh-75-l"


{-| vh_100_l
-}
vh_100_l : String
vh_100_l =
    "vh-100-l"


{-| min_vh_100_l
-}
min_vh_100_l : String
min_vh_100_l =
    "min-vh-100-l"


{-| h_auto_l
-}
h_auto_l : String
h_auto_l =
    "h-auto-l"


{-| h_inherit_l
-}
h_inherit_l : String
h_inherit_l =
    "h-inherit-l"


{-| tracked
-}
tracked : String
tracked =
    "tracked"


{-| tracked_tight
-}
tracked_tight : String
tracked_tight =
    "tracked-tight"


{-| tracked_mega
-}
tracked_mega : String
tracked_mega =
    "tracked-mega"


{-| tracked_ns
-}
tracked_ns : String
tracked_ns =
    "tracked-ns"


{-| tracked_tight_ns
-}
tracked_tight_ns : String
tracked_tight_ns =
    "tracked-tight-ns"


{-| tracked_mega_ns
-}
tracked_mega_ns : String
tracked_mega_ns =
    "tracked-mega-ns"


{-| tracked_m
-}
tracked_m : String
tracked_m =
    "tracked-m"


{-| tracked_tight_m
-}
tracked_tight_m : String
tracked_tight_m =
    "tracked-tight-m"


{-| tracked_mega_m
-}
tracked_mega_m : String
tracked_mega_m =
    "tracked-mega-m"


{-| tracked_l
-}
tracked_l : String
tracked_l =
    "tracked-l"


{-| tracked_tight_l
-}
tracked_tight_l : String
tracked_tight_l =
    "tracked-tight-l"


{-| tracked_mega_l
-}
tracked_mega_l : String
tracked_mega_l =
    "tracked-mega-l"


{-| lh_solid
-}
lh_solid : String
lh_solid =
    "lh-solid"


{-| lh_title
-}
lh_title : String
lh_title =
    "lh-title"


{-| lh_copy
-}
lh_copy : String
lh_copy =
    "lh-copy"


{-| lh_solid_ns
-}
lh_solid_ns : String
lh_solid_ns =
    "lh-solid-ns"


{-| lh_title_ns
-}
lh_title_ns : String
lh_title_ns =
    "lh-title-ns"


{-| lh_copy_ns
-}
lh_copy_ns : String
lh_copy_ns =
    "lh-copy-ns"


{-| lh_solid_m
-}
lh_solid_m : String
lh_solid_m =
    "lh-solid-m"


{-| lh_title_m
-}
lh_title_m : String
lh_title_m =
    "lh-title-m"


{-| lh_copy_m
-}
lh_copy_m : String
lh_copy_m =
    "lh-copy-m"


{-| lh_solid_l
-}
lh_solid_l : String
lh_solid_l =
    "lh-solid-l"


{-| lh_title_l
-}
lh_title_l : String
lh_title_l =
    "lh-title-l"


{-| lh_copy_l
-}
lh_copy_l : String
lh_copy_l =
    "lh-copy-l"


{-| link
-}
link : String
link =
    "link"


{-| linkd
-}
linkd : String
linkd =
    "linkd"


{-| list
-}
list : String
list =
    "list"


{-| mw_100
-}
mw_100 : String
mw_100 =
    "mw-100"


{-| mw1
-}
mw1 : String
mw1 =
    "mw1"


{-| mw2
-}
mw2 : String
mw2 =
    "mw2"


{-| mw3
-}
mw3 : String
mw3 =
    "mw3"


{-| mw4
-}
mw4 : String
mw4 =
    "mw4"


{-| mw5
-}
mw5 : String
mw5 =
    "mw5"


{-| mw6
-}
mw6 : String
mw6 =
    "mw6"


{-| mw7
-}
mw7 : String
mw7 =
    "mw7"


{-| mw8
-}
mw8 : String
mw8 =
    "mw8"


{-| mw9
-}
mw9 : String
mw9 =
    "mw9"


{-| mw_none
-}
mw_none : String
mw_none =
    "mw-none"


{-| mw_100_ns
-}
mw_100_ns : String
mw_100_ns =
    "mw-100-ns"


{-| mw1_ns
-}
mw1_ns : String
mw1_ns =
    "mw1-ns"


{-| mw2_ns
-}
mw2_ns : String
mw2_ns =
    "mw2-ns"


{-| mw3_ns
-}
mw3_ns : String
mw3_ns =
    "mw3-ns"


{-| mw4_ns
-}
mw4_ns : String
mw4_ns =
    "mw4-ns"


{-| mw5_ns
-}
mw5_ns : String
mw5_ns =
    "mw5-ns"


{-| mw6_ns
-}
mw6_ns : String
mw6_ns =
    "mw6-ns"


{-| mw7_ns
-}
mw7_ns : String
mw7_ns =
    "mw7-ns"


{-| mw8_ns
-}
mw8_ns : String
mw8_ns =
    "mw8-ns"


{-| mw9_ns
-}
mw9_ns : String
mw9_ns =
    "mw9-ns"


{-| mw_none_ns
-}
mw_none_ns : String
mw_none_ns =
    "mw-none-ns"


{-| mw_100_m
-}
mw_100_m : String
mw_100_m =
    "mw-100-m"


{-| mw1_m
-}
mw1_m : String
mw1_m =
    "mw1-m"


{-| mw2_m
-}
mw2_m : String
mw2_m =
    "mw2-m"


{-| mw3_m
-}
mw3_m : String
mw3_m =
    "mw3-m"


{-| mw4_m
-}
mw4_m : String
mw4_m =
    "mw4-m"


{-| mw5_m
-}
mw5_m : String
mw5_m =
    "mw5-m"


{-| mw6_m
-}
mw6_m : String
mw6_m =
    "mw6-m"


{-| mw7_m
-}
mw7_m : String
mw7_m =
    "mw7-m"


{-| mw8_m
-}
mw8_m : String
mw8_m =
    "mw8-m"


{-| mw9_m
-}
mw9_m : String
mw9_m =
    "mw9-m"


{-| mw_none_m
-}
mw_none_m : String
mw_none_m =
    "mw-none-m"


{-| mw_100_l
-}
mw_100_l : String
mw_100_l =
    "mw-100-l"


{-| mw1_l
-}
mw1_l : String
mw1_l =
    "mw1-l"


{-| mw2_l
-}
mw2_l : String
mw2_l =
    "mw2-l"


{-| mw3_l
-}
mw3_l : String
mw3_l =
    "mw3-l"


{-| mw4_l
-}
mw4_l : String
mw4_l =
    "mw4-l"


{-| mw5_l
-}
mw5_l : String
mw5_l =
    "mw5-l"


{-| mw6_l
-}
mw6_l : String
mw6_l =
    "mw6-l"


{-| mw7_l
-}
mw7_l : String
mw7_l =
    "mw7-l"


{-| mw8_l
-}
mw8_l : String
mw8_l =
    "mw8-l"


{-| mw9_l
-}
mw9_l : String
mw9_l =
    "mw9-l"


{-| mw_none_l
-}
mw_none_l : String
mw_none_l =
    "mw-none-l"


{-| w1
-}
w1 : String
w1 =
    "w1"


{-| w2
-}
w2 : String
w2 =
    "w2"


{-| w3
-}
w3 : String
w3 =
    "w3"


{-| w4
-}
w4 : String
w4 =
    "w4"


{-| w5
-}
w5 : String
w5 =
    "w5"


{-| w_10
-}
w_10 : String
w_10 =
    "w-10"


{-| w_20
-}
w_20 : String
w_20 =
    "w-20"


{-| w_25
-}
w_25 : String
w_25 =
    "w-25"


{-| w_30
-}
w_30 : String
w_30 =
    "w-30"


{-| w_33
-}
w_33 : String
w_33 =
    "w-33"


{-| w_34
-}
w_34 : String
w_34 =
    "w-34"


{-| w_40
-}
w_40 : String
w_40 =
    "w-40"


{-| w_50
-}
w_50 : String
w_50 =
    "w-50"


{-| w_60
-}
w_60 : String
w_60 =
    "w-60"


{-| w_70
-}
w_70 : String
w_70 =
    "w-70"


{-| w_75
-}
w_75 : String
w_75 =
    "w-75"


{-| w_80
-}
w_80 : String
w_80 =
    "w-80"


{-| w_90
-}
w_90 : String
w_90 =
    "w-90"


{-| w_100
-}
w_100 : String
w_100 =
    "w-100"


{-| w_third
-}
w_third : String
w_third =
    "w-third"


{-| w_two_thirds
-}
w_two_thirds : String
w_two_thirds =
    "w-two-thirds"


{-| w_auto
-}
w_auto : String
w_auto =
    "w-auto"


{-| w1_ns
-}
w1_ns : String
w1_ns =
    "w1-ns"


{-| w2_ns
-}
w2_ns : String
w2_ns =
    "w2-ns"


{-| w3_ns
-}
w3_ns : String
w3_ns =
    "w3-ns"


{-| w4_ns
-}
w4_ns : String
w4_ns =
    "w4-ns"


{-| w5_ns
-}
w5_ns : String
w5_ns =
    "w5-ns"


{-| w_10_ns
-}
w_10_ns : String
w_10_ns =
    "w-10-ns"


{-| w_20_ns
-}
w_20_ns : String
w_20_ns =
    "w-20-ns"


{-| w_25_ns
-}
w_25_ns : String
w_25_ns =
    "w-25-ns"


{-| w_30_ns
-}
w_30_ns : String
w_30_ns =
    "w-30-ns"


{-| w_33_ns
-}
w_33_ns : String
w_33_ns =
    "w-33-ns"


{-| w_34_ns
-}
w_34_ns : String
w_34_ns =
    "w-34-ns"


{-| w_40_ns
-}
w_40_ns : String
w_40_ns =
    "w-40-ns"


{-| w_50_ns
-}
w_50_ns : String
w_50_ns =
    "w-50-ns"


{-| w_60_ns
-}
w_60_ns : String
w_60_ns =
    "w-60-ns"


{-| w_70_ns
-}
w_70_ns : String
w_70_ns =
    "w-70-ns"


{-| w_75_ns
-}
w_75_ns : String
w_75_ns =
    "w-75-ns"


{-| w_80_ns
-}
w_80_ns : String
w_80_ns =
    "w-80-ns"


{-| w_90_ns
-}
w_90_ns : String
w_90_ns =
    "w-90-ns"


{-| w_100_ns
-}
w_100_ns : String
w_100_ns =
    "w-100-ns"


{-| w_third_ns
-}
w_third_ns : String
w_third_ns =
    "w-third-ns"


{-| w_two_thirds_ns
-}
w_two_thirds_ns : String
w_two_thirds_ns =
    "w-two-thirds-ns"


{-| w_auto_ns
-}
w_auto_ns : String
w_auto_ns =
    "w-auto-ns"


{-| w1_m
-}
w1_m : String
w1_m =
    "w1-m"


{-| w2_m
-}
w2_m : String
w2_m =
    "w2-m"


{-| w3_m
-}
w3_m : String
w3_m =
    "w3-m"


{-| w4_m
-}
w4_m : String
w4_m =
    "w4-m"


{-| w5_m
-}
w5_m : String
w5_m =
    "w5-m"


{-| w_10_m
-}
w_10_m : String
w_10_m =
    "w-10-m"


{-| w_20_m
-}
w_20_m : String
w_20_m =
    "w-20-m"


{-| w_25_m
-}
w_25_m : String
w_25_m =
    "w-25-m"


{-| w_30_m
-}
w_30_m : String
w_30_m =
    "w-30-m"


{-| w_33_m
-}
w_33_m : String
w_33_m =
    "w-33-m"


{-| w_34_m
-}
w_34_m : String
w_34_m =
    "w-34-m"


{-| w_40_m
-}
w_40_m : String
w_40_m =
    "w-40-m"


{-| w_50_m
-}
w_50_m : String
w_50_m =
    "w-50-m"


{-| w_60_m
-}
w_60_m : String
w_60_m =
    "w-60-m"


{-| w_70_m
-}
w_70_m : String
w_70_m =
    "w-70-m"


{-| w_75_m
-}
w_75_m : String
w_75_m =
    "w-75-m"


{-| w_80_m
-}
w_80_m : String
w_80_m =
    "w-80-m"


{-| w_90_m
-}
w_90_m : String
w_90_m =
    "w-90-m"


{-| w_100_m
-}
w_100_m : String
w_100_m =
    "w-100-m"


{-| w_third_m
-}
w_third_m : String
w_third_m =
    "w-third-m"


{-| w_two_thirds_m
-}
w_two_thirds_m : String
w_two_thirds_m =
    "w-two-thirds-m"


{-| w_auto_m
-}
w_auto_m : String
w_auto_m =
    "w-auto-m"


{-| w1_l
-}
w1_l : String
w1_l =
    "w1-l"


{-| w2_l
-}
w2_l : String
w2_l =
    "w2-l"


{-| w3_l
-}
w3_l : String
w3_l =
    "w3-l"


{-| w4_l
-}
w4_l : String
w4_l =
    "w4-l"


{-| w5_l
-}
w5_l : String
w5_l =
    "w5-l"


{-| w_10_l
-}
w_10_l : String
w_10_l =
    "w-10-l"


{-| w_20_l
-}
w_20_l : String
w_20_l =
    "w-20-l"


{-| w_25_l
-}
w_25_l : String
w_25_l =
    "w-25-l"


{-| w_30_l
-}
w_30_l : String
w_30_l =
    "w-30-l"


{-| w_33_l
-}
w_33_l : String
w_33_l =
    "w-33-l"


{-| w_34_l
-}
w_34_l : String
w_34_l =
    "w-34-l"


{-| w_40_l
-}
w_40_l : String
w_40_l =
    "w-40-l"


{-| w_50_l
-}
w_50_l : String
w_50_l =
    "w-50-l"


{-| w_60_l
-}
w_60_l : String
w_60_l =
    "w-60-l"


{-| w_70_l
-}
w_70_l : String
w_70_l =
    "w-70-l"


{-| w_75_l
-}
w_75_l : String
w_75_l =
    "w-75-l"


{-| w_80_l
-}
w_80_l : String
w_80_l =
    "w-80-l"


{-| w_90_l
-}
w_90_l : String
w_90_l =
    "w-90-l"


{-| w_100_l
-}
w_100_l : String
w_100_l =
    "w-100-l"


{-| w_third_l
-}
w_third_l : String
w_third_l =
    "w-third-l"


{-| w_two_thirds_l
-}
w_two_thirds_l : String
w_two_thirds_l =
    "w-two-thirds-l"


{-| w_auto_l
-}
w_auto_l : String
w_auto_l =
    "w-auto-l"


{-| overflow_visible
-}
overflow_visible : String
overflow_visible =
    "overflow-visible"


{-| overflow_hidden
-}
overflow_hidden : String
overflow_hidden =
    "overflow-hidden"


{-| overflow_scroll
-}
overflow_scroll : String
overflow_scroll =
    "overflow-scroll"


{-| overflow_auto
-}
overflow_auto : String
overflow_auto =
    "overflow-auto"


{-| overflow_x_visible
-}
overflow_x_visible : String
overflow_x_visible =
    "overflow-x-visible"


{-| overflow_x_hidden
-}
overflow_x_hidden : String
overflow_x_hidden =
    "overflow-x-hidden"


{-| overflow_x_scroll
-}
overflow_x_scroll : String
overflow_x_scroll =
    "overflow-x-scroll"


{-| overflow_x_auto
-}
overflow_x_auto : String
overflow_x_auto =
    "overflow-x-auto"


{-| overflow_y_visible
-}
overflow_y_visible : String
overflow_y_visible =
    "overflow-y-visible"


{-| overflow_y_hidden
-}
overflow_y_hidden : String
overflow_y_hidden =
    "overflow-y-hidden"


{-| overflow_y_scroll
-}
overflow_y_scroll : String
overflow_y_scroll =
    "overflow-y-scroll"


{-| overflow_y_auto
-}
overflow_y_auto : String
overflow_y_auto =
    "overflow-y-auto"


{-| overflow_visible_ns
-}
overflow_visible_ns : String
overflow_visible_ns =
    "overflow-visible-ns"


{-| overflow_hidden_ns
-}
overflow_hidden_ns : String
overflow_hidden_ns =
    "overflow-hidden-ns"


{-| overflow_scroll_ns
-}
overflow_scroll_ns : String
overflow_scroll_ns =
    "overflow-scroll-ns"


{-| overflow_auto_ns
-}
overflow_auto_ns : String
overflow_auto_ns =
    "overflow-auto-ns"


{-| overflow_x_visible_ns
-}
overflow_x_visible_ns : String
overflow_x_visible_ns =
    "overflow-x-visible-ns"


{-| overflow_x_hidden_ns
-}
overflow_x_hidden_ns : String
overflow_x_hidden_ns =
    "overflow-x-hidden-ns"


{-| overflow_x_scroll_ns
-}
overflow_x_scroll_ns : String
overflow_x_scroll_ns =
    "overflow-x-scroll-ns"


{-| overflow_x_auto_ns
-}
overflow_x_auto_ns : String
overflow_x_auto_ns =
    "overflow-x-auto-ns"


{-| overflow_y_visible_ns
-}
overflow_y_visible_ns : String
overflow_y_visible_ns =
    "overflow-y-visible-ns"


{-| overflow_y_hidden_ns
-}
overflow_y_hidden_ns : String
overflow_y_hidden_ns =
    "overflow-y-hidden-ns"


{-| overflow_y_scroll_ns
-}
overflow_y_scroll_ns : String
overflow_y_scroll_ns =
    "overflow-y-scroll-ns"


{-| overflow_y_auto_ns
-}
overflow_y_auto_ns : String
overflow_y_auto_ns =
    "overflow-y-auto-ns"


{-| overflow_visible_m
-}
overflow_visible_m : String
overflow_visible_m =
    "overflow-visible-m"


{-| overflow_hidden_m
-}
overflow_hidden_m : String
overflow_hidden_m =
    "overflow-hidden-m"


{-| overflow_scroll_m
-}
overflow_scroll_m : String
overflow_scroll_m =
    "overflow-scroll-m"


{-| overflow_auto_m
-}
overflow_auto_m : String
overflow_auto_m =
    "overflow-auto-m"


{-| overflow_x_visible_m
-}
overflow_x_visible_m : String
overflow_x_visible_m =
    "overflow-x-visible-m"


{-| overflow_x_hidden_m
-}
overflow_x_hidden_m : String
overflow_x_hidden_m =
    "overflow-x-hidden-m"


{-| overflow_x_scroll_m
-}
overflow_x_scroll_m : String
overflow_x_scroll_m =
    "overflow-x-scroll-m"


{-| overflow_x_auto_m
-}
overflow_x_auto_m : String
overflow_x_auto_m =
    "overflow-x-auto-m"


{-| overflow_y_visible_m
-}
overflow_y_visible_m : String
overflow_y_visible_m =
    "overflow-y-visible-m"


{-| overflow_y_hidden_m
-}
overflow_y_hidden_m : String
overflow_y_hidden_m =
    "overflow-y-hidden-m"


{-| overflow_y_scroll_m
-}
overflow_y_scroll_m : String
overflow_y_scroll_m =
    "overflow-y-scroll-m"


{-| overflow_y_auto_m
-}
overflow_y_auto_m : String
overflow_y_auto_m =
    "overflow-y-auto-m"


{-| overflow_visible_l
-}
overflow_visible_l : String
overflow_visible_l =
    "overflow-visible-l"


{-| overflow_hidden_l
-}
overflow_hidden_l : String
overflow_hidden_l =
    "overflow-hidden-l"


{-| overflow_scroll_l
-}
overflow_scroll_l : String
overflow_scroll_l =
    "overflow-scroll-l"


{-| overflow_auto_l
-}
overflow_auto_l : String
overflow_auto_l =
    "overflow-auto-l"


{-| overflow_x_visible_l
-}
overflow_x_visible_l : String
overflow_x_visible_l =
    "overflow-x-visible-l"


{-| overflow_x_hidden_l
-}
overflow_x_hidden_l : String
overflow_x_hidden_l =
    "overflow-x-hidden-l"


{-| overflow_x_scroll_l
-}
overflow_x_scroll_l : String
overflow_x_scroll_l =
    "overflow-x-scroll-l"


{-| overflow_x_auto_l
-}
overflow_x_auto_l : String
overflow_x_auto_l =
    "overflow-x-auto-l"


{-| overflow_y_visible_l
-}
overflow_y_visible_l : String
overflow_y_visible_l =
    "overflow-y-visible-l"


{-| overflow_y_hidden_l
-}
overflow_y_hidden_l : String
overflow_y_hidden_l =
    "overflow-y-hidden-l"


{-| overflow_y_scroll_l
-}
overflow_y_scroll_l : String
overflow_y_scroll_l =
    "overflow-y-scroll-l"


{-| overflow_y_auto_l
-}
overflow_y_auto_l : String
overflow_y_auto_l =
    "overflow-y-auto-l"


{-| static
-}
static : String
static =
    "static"


{-| relative
-}
relative : String
relative =
    "relative"


{-| absolute
-}
absolute : String
absolute =
    "absolute"


{-| fixed
-}
fixed : String
fixed =
    "fixed"


{-| static_ns
-}
static_ns : String
static_ns =
    "static-ns"


{-| relative_ns
-}
relative_ns : String
relative_ns =
    "relative-ns"


{-| absolute_ns
-}
absolute_ns : String
absolute_ns =
    "absolute-ns"


{-| fixed_ns
-}
fixed_ns : String
fixed_ns =
    "fixed-ns"


{-| static_m
-}
static_m : String
static_m =
    "static-m"


{-| relative_m
-}
relative_m : String
relative_m =
    "relative-m"


{-| absolute_m
-}
absolute_m : String
absolute_m =
    "absolute-m"


{-| fixed_m
-}
fixed_m : String
fixed_m =
    "fixed-m"


{-| static_l
-}
static_l : String
static_l =
    "static-l"


{-| relative_l
-}
relative_l : String
relative_l =
    "relative-l"


{-| absolute_l
-}
absolute_l : String
absolute_l =
    "absolute-l"


{-| fixed_l
-}
fixed_l : String
fixed_l =
    "fixed-l"


{-| o_100
-}
o_100 : String
o_100 =
    "o-100"


{-| o_90
-}
o_90 : String
o_90 =
    "o-90"


{-| o_80
-}
o_80 : String
o_80 =
    "o-80"


{-| o_70
-}
o_70 : String
o_70 =
    "o-70"


{-| o_60
-}
o_60 : String
o_60 =
    "o-60"


{-| o_50
-}
o_50 : String
o_50 =
    "o-50"


{-| o_40
-}
o_40 : String
o_40 =
    "o-40"


{-| o_30
-}
o_30 : String
o_30 =
    "o-30"


{-| o_20
-}
o_20 : String
o_20 =
    "o-20"


{-| o_10
-}
o_10 : String
o_10 =
    "o-10"


{-| o_05
-}
o_05 : String
o_05 =
    "o-05"


{-| o_025
-}
o_025 : String
o_025 =
    "o-025"


{-| o_0
-}
o_0 : String
o_0 =
    "o-0"


{-| rotate_45
-}
rotate_45 : String
rotate_45 =
    "rotate-45"


{-| rotate_90
-}
rotate_90 : String
rotate_90 =
    "rotate-90"


{-| rotate_135
-}
rotate_135 : String
rotate_135 =
    "rotate-135"


{-| rotate_180
-}
rotate_180 : String
rotate_180 =
    "rotate-180"


{-| rotate_225
-}
rotate_225 : String
rotate_225 =
    "rotate-225"


{-| rotate_270
-}
rotate_270 : String
rotate_270 =
    "rotate-270"


{-| rotate_315
-}
rotate_315 : String
rotate_315 =
    "rotate-315"


{-| rotate_45_ns
-}
rotate_45_ns : String
rotate_45_ns =
    "rotate-45-ns"


{-| rotate_90_ns
-}
rotate_90_ns : String
rotate_90_ns =
    "rotate-90-ns"


{-| rotate_135_ns
-}
rotate_135_ns : String
rotate_135_ns =
    "rotate-135-ns"


{-| rotate_180_ns
-}
rotate_180_ns : String
rotate_180_ns =
    "rotate-180-ns"


{-| rotate_225_ns
-}
rotate_225_ns : String
rotate_225_ns =
    "rotate-225-ns"


{-| rotate_270_ns
-}
rotate_270_ns : String
rotate_270_ns =
    "rotate-270-ns"


{-| rotate_315_ns
-}
rotate_315_ns : String
rotate_315_ns =
    "rotate-315-ns"


{-| rotate_45_m
-}
rotate_45_m : String
rotate_45_m =
    "rotate-45-m"


{-| rotate_90_m
-}
rotate_90_m : String
rotate_90_m =
    "rotate-90-m"


{-| rotate_135_m
-}
rotate_135_m : String
rotate_135_m =
    "rotate-135-m"


{-| rotate_180_m
-}
rotate_180_m : String
rotate_180_m =
    "rotate-180-m"


{-| rotate_225_m
-}
rotate_225_m : String
rotate_225_m =
    "rotate-225-m"


{-| rotate_270_m
-}
rotate_270_m : String
rotate_270_m =
    "rotate-270-m"


{-| rotate_315_m
-}
rotate_315_m : String
rotate_315_m =
    "rotate-315-m"


{-| rotate_45_l
-}
rotate_45_l : String
rotate_45_l =
    "rotate-45-l"


{-| rotate_90_l
-}
rotate_90_l : String
rotate_90_l =
    "rotate-90-l"


{-| rotate_135_l
-}
rotate_135_l : String
rotate_135_l =
    "rotate-135-l"


{-| rotate_180_l
-}
rotate_180_l : String
rotate_180_l =
    "rotate-180-l"


{-| rotate_225_l
-}
rotate_225_l : String
rotate_225_l =
    "rotate-225-l"


{-| rotate_270_l
-}
rotate_270_l : String
rotate_270_l =
    "rotate-270-l"


{-| rotate_315_l
-}
rotate_315_l : String
rotate_315_l =
    "rotate-315-l"


{-| black_90
-}
black_90 : String
black_90 =
    "black-90"


{-| black_80
-}
black_80 : String
black_80 =
    "black-80"


{-| black_70
-}
black_70 : String
black_70 =
    "black-70"


{-| black_60
-}
black_60 : String
black_60 =
    "black-60"


{-| black_50
-}
black_50 : String
black_50 =
    "black-50"


{-| black_40
-}
black_40 : String
black_40 =
    "black-40"


{-| black_30
-}
black_30 : String
black_30 =
    "black-30"


{-| black_20
-}
black_20 : String
black_20 =
    "black-20"


{-| black_10
-}
black_10 : String
black_10 =
    "black-10"


{-| black_05
-}
black_05 : String
black_05 =
    "black-05"


{-| white_90
-}
white_90 : String
white_90 =
    "white-90"


{-| white_80
-}
white_80 : String
white_80 =
    "white-80"


{-| white_70
-}
white_70 : String
white_70 =
    "white-70"


{-| white_60
-}
white_60 : String
white_60 =
    "white-60"


{-| white_50
-}
white_50 : String
white_50 =
    "white-50"


{-| white_40
-}
white_40 : String
white_40 =
    "white-40"


{-| white_30
-}
white_30 : String
white_30 =
    "white-30"


{-| white_20
-}
white_20 : String
white_20 =
    "white-20"


{-| white_10
-}
white_10 : String
white_10 =
    "white-10"


{-| black
-}
black : String
black =
    "black"


{-| near_black
-}
near_black : String
near_black =
    "near-black"


{-| dark_gray
-}
dark_gray : String
dark_gray =
    "dark-gray"


{-| mid_gray
-}
mid_gray : String
mid_gray =
    "mid-gray"


{-| gray
-}
gray : String
gray =
    "gray"


{-| silver
-}
silver : String
silver =
    "silver"


{-| light_silver
-}
light_silver : String
light_silver =
    "light-silver"


{-| moon_gray
-}
moon_gray : String
moon_gray =
    "moon-gray"


{-| light_gray
-}
light_gray : String
light_gray =
    "light-gray"


{-| near_white
-}
near_white : String
near_white =
    "near-white"


{-| white
-}
white : String
white =
    "white"


{-| dark_red
-}
dark_red : String
dark_red =
    "dark-red"


{-| red
-}
red : String
red =
    "red"


{-| light_red
-}
light_red : String
light_red =
    "light-red"


{-| orange
-}
orange : String
orange =
    "orange"


{-| gold
-}
gold : String
gold =
    "gold"


{-| yellow
-}
yellow : String
yellow =
    "yellow"


{-| light_yellow
-}
light_yellow : String
light_yellow =
    "light-yellow"


{-| purple
-}
purple : String
purple =
    "purple"


{-| light_purple
-}
light_purple : String
light_purple =
    "light-purple"


{-| dark_pink
-}
dark_pink : String
dark_pink =
    "dark-pink"


{-| hot_pink
-}
hot_pink : String
hot_pink =
    "hot-pink"


{-| pink
-}
pink : String
pink =
    "pink"


{-| light_pink
-}
light_pink : String
light_pink =
    "light-pink"


{-| dark_green
-}
dark_green : String
dark_green =
    "dark-green"


{-| green
-}
green : String
green =
    "green"


{-| light_green
-}
light_green : String
light_green =
    "light-green"


{-| navy
-}
navy : String
navy =
    "navy"


{-| dark_blue
-}
dark_blue : String
dark_blue =
    "dark-blue"


{-| blue
-}
blue : String
blue =
    "blue"


{-| light_blue
-}
light_blue : String
light_blue =
    "light-blue"


{-| lightest_blue
-}
lightest_blue : String
lightest_blue =
    "lightest-blue"


{-| washed_blue
-}
washed_blue : String
washed_blue =
    "washed-blue"


{-| washed_green
-}
washed_green : String
washed_green =
    "washed-green"


{-| washed_yellow
-}
washed_yellow : String
washed_yellow =
    "washed-yellow"


{-| washed_red
-}
washed_red : String
washed_red =
    "washed-red"


{-| color_inherit
-}
color_inherit : String
color_inherit =
    "color-inherit"


{-| bg_black_90
-}
bg_black_90 : String
bg_black_90 =
    "bg-black-90"


{-| bg_black_80
-}
bg_black_80 : String
bg_black_80 =
    "bg-black-80"


{-| bg_black_70
-}
bg_black_70 : String
bg_black_70 =
    "bg-black-70"


{-| bg_black_60
-}
bg_black_60 : String
bg_black_60 =
    "bg-black-60"


{-| bg_black_50
-}
bg_black_50 : String
bg_black_50 =
    "bg-black-50"


{-| bg_black_40
-}
bg_black_40 : String
bg_black_40 =
    "bg-black-40"


{-| bg_black_30
-}
bg_black_30 : String
bg_black_30 =
    "bg-black-30"


{-| bg_black_20
-}
bg_black_20 : String
bg_black_20 =
    "bg-black-20"


{-| bg_black_10
-}
bg_black_10 : String
bg_black_10 =
    "bg-black-10"


{-| bg_black_05
-}
bg_black_05 : String
bg_black_05 =
    "bg-black-05"


{-| bg_white_90
-}
bg_white_90 : String
bg_white_90 =
    "bg-white-90"


{-| bg_white_80
-}
bg_white_80 : String
bg_white_80 =
    "bg-white-80"


{-| bg_white_70
-}
bg_white_70 : String
bg_white_70 =
    "bg-white-70"


{-| bg_white_60
-}
bg_white_60 : String
bg_white_60 =
    "bg-white-60"


{-| bg_white_50
-}
bg_white_50 : String
bg_white_50 =
    "bg-white-50"


{-| bg_white_40
-}
bg_white_40 : String
bg_white_40 =
    "bg-white-40"


{-| bg_white_30
-}
bg_white_30 : String
bg_white_30 =
    "bg-white-30"


{-| bg_white_20
-}
bg_white_20 : String
bg_white_20 =
    "bg-white-20"


{-| bg_white_10
-}
bg_white_10 : String
bg_white_10 =
    "bg-white-10"


{-| bg_black
-}
bg_black : String
bg_black =
    "bg-black"


{-| bg_near_black
-}
bg_near_black : String
bg_near_black =
    "bg-near-black"


{-| bg_dark_gray
-}
bg_dark_gray : String
bg_dark_gray =
    "bg-dark-gray"


{-| bg_mid_gray
-}
bg_mid_gray : String
bg_mid_gray =
    "bg-mid-gray"


{-| bg_gray
-}
bg_gray : String
bg_gray =
    "bg-gray"


{-| bg_silver
-}
bg_silver : String
bg_silver =
    "bg-silver"


{-| bg_light_silver
-}
bg_light_silver : String
bg_light_silver =
    "bg-light-silver"


{-| bg_moon_gray
-}
bg_moon_gray : String
bg_moon_gray =
    "bg-moon-gray"


{-| bg_light_gray
-}
bg_light_gray : String
bg_light_gray =
    "bg-light-gray"


{-| bg_near_white
-}
bg_near_white : String
bg_near_white =
    "bg-near-white"


{-| bg_white
-}
bg_white : String
bg_white =
    "bg-white"


{-| bg_transparent
-}
bg_transparent : String
bg_transparent =
    "bg-transparent"


{-| bg_dark_red
-}
bg_dark_red : String
bg_dark_red =
    "bg-dark-red"


{-| bg_red
-}
bg_red : String
bg_red =
    "bg-red"


{-| bg_light_red
-}
bg_light_red : String
bg_light_red =
    "bg-light-red"


{-| bg_orange
-}
bg_orange : String
bg_orange =
    "bg-orange"


{-| bg_gold
-}
bg_gold : String
bg_gold =
    "bg-gold"


{-| bg_yellow
-}
bg_yellow : String
bg_yellow =
    "bg-yellow"


{-| bg_light_yellow
-}
bg_light_yellow : String
bg_light_yellow =
    "bg-light-yellow"


{-| bg_purple
-}
bg_purple : String
bg_purple =
    "bg-purple"


{-| bg_light_purple
-}
bg_light_purple : String
bg_light_purple =
    "bg-light-purple"


{-| bg_dark_pink
-}
bg_dark_pink : String
bg_dark_pink =
    "bg-dark-pink"


{-| bg_hot_pink
-}
bg_hot_pink : String
bg_hot_pink =
    "bg-hot-pink"


{-| bg_pink
-}
bg_pink : String
bg_pink =
    "bg-pink"


{-| bg_light_pink
-}
bg_light_pink : String
bg_light_pink =
    "bg-light-pink"


{-| bg_dark_green
-}
bg_dark_green : String
bg_dark_green =
    "bg-dark-green"


{-| bg_green
-}
bg_green : String
bg_green =
    "bg-green"


{-| bg_light_green
-}
bg_light_green : String
bg_light_green =
    "bg-light-green"


{-| bg_navy
-}
bg_navy : String
bg_navy =
    "bg-navy"


{-| bg_dark_blue
-}
bg_dark_blue : String
bg_dark_blue =
    "bg-dark-blue"


{-| bg_blue
-}
bg_blue : String
bg_blue =
    "bg-blue"


{-| bg_light_blue
-}
bg_light_blue : String
bg_light_blue =
    "bg-light-blue"


{-| bg_lightest_blue
-}
bg_lightest_blue : String
bg_lightest_blue =
    "bg-lightest-blue"


{-| bg_washed_blue
-}
bg_washed_blue : String
bg_washed_blue =
    "bg-washed-blue"


{-| bg_washed_green
-}
bg_washed_green : String
bg_washed_green =
    "bg-washed-green"


{-| bg_washed_yellow
-}
bg_washed_yellow : String
bg_washed_yellow =
    "bg-washed-yellow"


{-| bg_washed_red
-}
bg_washed_red : String
bg_washed_red =
    "bg-washed-red"


{-| bg_inherit
-}
bg_inherit : String
bg_inherit =
    "bg-inherit"


{-| hover_blackd
-}
hover_blackd : String
hover_blackd =
    "hover-blackd"


{-| hover_near_blackd
-}
hover_near_blackd : String
hover_near_blackd =
    "hover-near-blackd"


{-| hover_dark_grayd
-}
hover_dark_grayd : String
hover_dark_grayd =
    "hover-dark-grayd"


{-| hover_mid_grayd
-}
hover_mid_grayd : String
hover_mid_grayd =
    "hover-mid-grayd"


{-| hover_grayd
-}
hover_grayd : String
hover_grayd =
    "hover-grayd"


{-| hover_silverd
-}
hover_silverd : String
hover_silverd =
    "hover-silverd"


{-| hover_light_silverd
-}
hover_light_silverd : String
hover_light_silverd =
    "hover-light-silverd"


{-| hover_moon_grayd
-}
hover_moon_grayd : String
hover_moon_grayd =
    "hover-moon-grayd"


{-| hover_light_grayd
-}
hover_light_grayd : String
hover_light_grayd =
    "hover-light-grayd"


{-| hover_near_whited
-}
hover_near_whited : String
hover_near_whited =
    "hover-near-whited"


{-| hover_whited
-}
hover_whited : String
hover_whited =
    "hover-whited"


{-| hover_black_90d
-}
hover_black_90d : String
hover_black_90d =
    "hover-black-90d"


{-| hover_black_80d
-}
hover_black_80d : String
hover_black_80d =
    "hover-black-80d"


{-| hover_black_70d
-}
hover_black_70d : String
hover_black_70d =
    "hover-black-70d"


{-| hover_black_60d
-}
hover_black_60d : String
hover_black_60d =
    "hover-black-60d"


{-| hover_black_50d
-}
hover_black_50d : String
hover_black_50d =
    "hover-black-50d"


{-| hover_black_40d
-}
hover_black_40d : String
hover_black_40d =
    "hover-black-40d"


{-| hover_black_30d
-}
hover_black_30d : String
hover_black_30d =
    "hover-black-30d"


{-| hover_black_20d
-}
hover_black_20d : String
hover_black_20d =
    "hover-black-20d"


{-| hover_black_10d
-}
hover_black_10d : String
hover_black_10d =
    "hover-black-10d"


{-| hover_white_90d
-}
hover_white_90d : String
hover_white_90d =
    "hover-white-90d"


{-| hover_white_80d
-}
hover_white_80d : String
hover_white_80d =
    "hover-white-80d"


{-| hover_white_70d
-}
hover_white_70d : String
hover_white_70d =
    "hover-white-70d"


{-| hover_white_60d
-}
hover_white_60d : String
hover_white_60d =
    "hover-white-60d"


{-| hover_white_50d
-}
hover_white_50d : String
hover_white_50d =
    "hover-white-50d"


{-| hover_white_40d
-}
hover_white_40d : String
hover_white_40d =
    "hover-white-40d"


{-| hover_white_30d
-}
hover_white_30d : String
hover_white_30d =
    "hover-white-30d"


{-| hover_white_20d
-}
hover_white_20d : String
hover_white_20d =
    "hover-white-20d"


{-| hover_white_10d
-}
hover_white_10d : String
hover_white_10d =
    "hover-white-10d"


{-| hover_inheritd
-}
hover_inheritd : String
hover_inheritd =
    "hover-inheritd"


{-| hover_bg_blackd
-}
hover_bg_blackd : String
hover_bg_blackd =
    "hover-bg-blackd"


{-| hover_bg_near_blackd
-}
hover_bg_near_blackd : String
hover_bg_near_blackd =
    "hover-bg-near-blackd"


{-| hover_bg_dark_grayd
-}
hover_bg_dark_grayd : String
hover_bg_dark_grayd =
    "hover-bg-dark-grayd"


{-| hover_bg_mid_grayd
-}
hover_bg_mid_grayd : String
hover_bg_mid_grayd =
    "hover-bg-mid-grayd"


{-| hover_bg_grayd
-}
hover_bg_grayd : String
hover_bg_grayd =
    "hover-bg-grayd"


{-| hover_bg_silverd
-}
hover_bg_silverd : String
hover_bg_silverd =
    "hover-bg-silverd"


{-| hover_bg_light_silverd
-}
hover_bg_light_silverd : String
hover_bg_light_silverd =
    "hover-bg-light-silverd"


{-| hover_bg_moon_grayd
-}
hover_bg_moon_grayd : String
hover_bg_moon_grayd =
    "hover-bg-moon-grayd"


{-| hover_bg_light_grayd
-}
hover_bg_light_grayd : String
hover_bg_light_grayd =
    "hover-bg-light-grayd"


{-| hover_bg_near_whited
-}
hover_bg_near_whited : String
hover_bg_near_whited =
    "hover-bg-near-whited"


{-| hover_bg_whited
-}
hover_bg_whited : String
hover_bg_whited =
    "hover-bg-whited"


{-| hover_bg_transparentd
-}
hover_bg_transparentd : String
hover_bg_transparentd =
    "hover-bg-transparentd"


{-| hover_bg_black_90d
-}
hover_bg_black_90d : String
hover_bg_black_90d =
    "hover-bg-black-90d"


{-| hover_bg_black_80d
-}
hover_bg_black_80d : String
hover_bg_black_80d =
    "hover-bg-black-80d"


{-| hover_bg_black_70d
-}
hover_bg_black_70d : String
hover_bg_black_70d =
    "hover-bg-black-70d"


{-| hover_bg_black_60d
-}
hover_bg_black_60d : String
hover_bg_black_60d =
    "hover-bg-black-60d"


{-| hover_bg_black_50d
-}
hover_bg_black_50d : String
hover_bg_black_50d =
    "hover-bg-black-50d"


{-| hover_bg_black_40d
-}
hover_bg_black_40d : String
hover_bg_black_40d =
    "hover-bg-black-40d"


{-| hover_bg_black_30d
-}
hover_bg_black_30d : String
hover_bg_black_30d =
    "hover-bg-black-30d"


{-| hover_bg_black_20d
-}
hover_bg_black_20d : String
hover_bg_black_20d =
    "hover-bg-black-20d"


{-| hover_bg_black_10d
-}
hover_bg_black_10d : String
hover_bg_black_10d =
    "hover-bg-black-10d"


{-| hover_bg_white_90d
-}
hover_bg_white_90d : String
hover_bg_white_90d =
    "hover-bg-white-90d"


{-| hover_bg_white_80d
-}
hover_bg_white_80d : String
hover_bg_white_80d =
    "hover-bg-white-80d"


{-| hover_bg_white_70d
-}
hover_bg_white_70d : String
hover_bg_white_70d =
    "hover-bg-white-70d"


{-| hover_bg_white_60d
-}
hover_bg_white_60d : String
hover_bg_white_60d =
    "hover-bg-white-60d"


{-| hover_bg_white_50d
-}
hover_bg_white_50d : String
hover_bg_white_50d =
    "hover-bg-white-50d"


{-| hover_bg_white_40d
-}
hover_bg_white_40d : String
hover_bg_white_40d =
    "hover-bg-white-40d"


{-| hover_bg_white_30d
-}
hover_bg_white_30d : String
hover_bg_white_30d =
    "hover-bg-white-30d"


{-| hover_bg_white_20d
-}
hover_bg_white_20d : String
hover_bg_white_20d =
    "hover-bg-white-20d"


{-| hover_bg_white_10d
-}
hover_bg_white_10d : String
hover_bg_white_10d =
    "hover-bg-white-10d"


{-| hover_dark_redd
-}
hover_dark_redd : String
hover_dark_redd =
    "hover-dark-redd"


{-| hover_redd
-}
hover_redd : String
hover_redd =
    "hover-redd"


{-| hover_light_redd
-}
hover_light_redd : String
hover_light_redd =
    "hover-light-redd"


{-| hover_oranged
-}
hover_oranged : String
hover_oranged =
    "hover-oranged"


{-| hover_goldd
-}
hover_goldd : String
hover_goldd =
    "hover-goldd"


{-| hover_yellowd
-}
hover_yellowd : String
hover_yellowd =
    "hover-yellowd"


{-| hover_light_yellowd
-}
hover_light_yellowd : String
hover_light_yellowd =
    "hover-light-yellowd"


{-| hover_purpled
-}
hover_purpled : String
hover_purpled =
    "hover-purpled"


{-| hover_light_purpled
-}
hover_light_purpled : String
hover_light_purpled =
    "hover-light-purpled"


{-| hover_dark_pinkd
-}
hover_dark_pinkd : String
hover_dark_pinkd =
    "hover-dark-pinkd"


{-| hover_hot_pinkd
-}
hover_hot_pinkd : String
hover_hot_pinkd =
    "hover-hot-pinkd"


{-| hover_pinkd
-}
hover_pinkd : String
hover_pinkd =
    "hover-pinkd"


{-| hover_light_pinkd
-}
hover_light_pinkd : String
hover_light_pinkd =
    "hover-light-pinkd"


{-| hover_dark_greend
-}
hover_dark_greend : String
hover_dark_greend =
    "hover-dark-greend"


{-| hover_greend
-}
hover_greend : String
hover_greend =
    "hover-greend"


{-| hover_light_greend
-}
hover_light_greend : String
hover_light_greend =
    "hover-light-greend"


{-| hover_navyd
-}
hover_navyd : String
hover_navyd =
    "hover-navyd"


{-| hover_dark_blued
-}
hover_dark_blued : String
hover_dark_blued =
    "hover-dark-blued"


{-| hover_blued
-}
hover_blued : String
hover_blued =
    "hover-blued"


{-| hover_light_blued
-}
hover_light_blued : String
hover_light_blued =
    "hover-light-blued"


{-| hover_lightest_blued
-}
hover_lightest_blued : String
hover_lightest_blued =
    "hover-lightest-blued"


{-| hover_washed_blued
-}
hover_washed_blued : String
hover_washed_blued =
    "hover-washed-blued"


{-| hover_washed_greend
-}
hover_washed_greend : String
hover_washed_greend =
    "hover-washed-greend"


{-| hover_washed_yellowd
-}
hover_washed_yellowd : String
hover_washed_yellowd =
    "hover-washed-yellowd"


{-| hover_washed_redd
-}
hover_washed_redd : String
hover_washed_redd =
    "hover-washed-redd"


{-| hover_bg_dark_redd
-}
hover_bg_dark_redd : String
hover_bg_dark_redd =
    "hover-bg-dark-redd"


{-| hover_bg_redd
-}
hover_bg_redd : String
hover_bg_redd =
    "hover-bg-redd"


{-| hover_bg_light_redd
-}
hover_bg_light_redd : String
hover_bg_light_redd =
    "hover-bg-light-redd"


{-| hover_bg_oranged
-}
hover_bg_oranged : String
hover_bg_oranged =
    "hover-bg-oranged"


{-| hover_bg_goldd
-}
hover_bg_goldd : String
hover_bg_goldd =
    "hover-bg-goldd"


{-| hover_bg_yellowd
-}
hover_bg_yellowd : String
hover_bg_yellowd =
    "hover-bg-yellowd"


{-| hover_bg_light_yellowd
-}
hover_bg_light_yellowd : String
hover_bg_light_yellowd =
    "hover-bg-light-yellowd"


{-| hover_bg_purpled
-}
hover_bg_purpled : String
hover_bg_purpled =
    "hover-bg-purpled"


{-| hover_bg_light_purpled
-}
hover_bg_light_purpled : String
hover_bg_light_purpled =
    "hover-bg-light-purpled"


{-| hover_bg_dark_pinkd
-}
hover_bg_dark_pinkd : String
hover_bg_dark_pinkd =
    "hover-bg-dark-pinkd"


{-| hover_bg_hot_pinkd
-}
hover_bg_hot_pinkd : String
hover_bg_hot_pinkd =
    "hover-bg-hot-pinkd"


{-| hover_bg_pinkd
-}
hover_bg_pinkd : String
hover_bg_pinkd =
    "hover-bg-pinkd"


{-| hover_bg_light_pinkd
-}
hover_bg_light_pinkd : String
hover_bg_light_pinkd =
    "hover-bg-light-pinkd"


{-| hover_bg_dark_greend
-}
hover_bg_dark_greend : String
hover_bg_dark_greend =
    "hover-bg-dark-greend"


{-| hover_bg_greend
-}
hover_bg_greend : String
hover_bg_greend =
    "hover-bg-greend"


{-| hover_bg_light_greend
-}
hover_bg_light_greend : String
hover_bg_light_greend =
    "hover-bg-light-greend"


{-| hover_bg_navyd
-}
hover_bg_navyd : String
hover_bg_navyd =
    "hover-bg-navyd"


{-| hover_bg_dark_blued
-}
hover_bg_dark_blued : String
hover_bg_dark_blued =
    "hover-bg-dark-blued"


{-| hover_bg_blued
-}
hover_bg_blued : String
hover_bg_blued =
    "hover-bg-blued"


{-| hover_bg_light_blued
-}
hover_bg_light_blued : String
hover_bg_light_blued =
    "hover-bg-light-blued"


{-| hover_bg_lightest_blued
-}
hover_bg_lightest_blued : String
hover_bg_lightest_blued =
    "hover-bg-lightest-blued"


{-| hover_bg_washed_blued
-}
hover_bg_washed_blued : String
hover_bg_washed_blued =
    "hover-bg-washed-blued"


{-| hover_bg_washed_greend
-}
hover_bg_washed_greend : String
hover_bg_washed_greend =
    "hover-bg-washed-greend"


{-| hover_bg_washed_yellowd
-}
hover_bg_washed_yellowd : String
hover_bg_washed_yellowd =
    "hover-bg-washed-yellowd"


{-| hover_bg_washed_redd
-}
hover_bg_washed_redd : String
hover_bg_washed_redd =
    "hover-bg-washed-redd"


{-| hover_bg_inheritd
-}
hover_bg_inheritd : String
hover_bg_inheritd =
    "hover-bg-inheritd"


{-| pa0
-}
pa0 : String
pa0 =
    "pa0"


{-| pa1
-}
pa1 : String
pa1 =
    "pa1"


{-| pa2
-}
pa2 : String
pa2 =
    "pa2"


{-| pa3
-}
pa3 : String
pa3 =
    "pa3"


{-| pa4
-}
pa4 : String
pa4 =
    "pa4"


{-| pa5
-}
pa5 : String
pa5 =
    "pa5"


{-| pa6
-}
pa6 : String
pa6 =
    "pa6"


{-| pa7
-}
pa7 : String
pa7 =
    "pa7"


{-| pl0
-}
pl0 : String
pl0 =
    "pl0"


{-| pl1
-}
pl1 : String
pl1 =
    "pl1"


{-| pl2
-}
pl2 : String
pl2 =
    "pl2"


{-| pl3
-}
pl3 : String
pl3 =
    "pl3"


{-| pl4
-}
pl4 : String
pl4 =
    "pl4"


{-| pl5
-}
pl5 : String
pl5 =
    "pl5"


{-| pl6
-}
pl6 : String
pl6 =
    "pl6"


{-| pl7
-}
pl7 : String
pl7 =
    "pl7"


{-| pr0
-}
pr0 : String
pr0 =
    "pr0"


{-| pr1
-}
pr1 : String
pr1 =
    "pr1"


{-| pr2
-}
pr2 : String
pr2 =
    "pr2"


{-| pr3
-}
pr3 : String
pr3 =
    "pr3"


{-| pr4
-}
pr4 : String
pr4 =
    "pr4"


{-| pr5
-}
pr5 : String
pr5 =
    "pr5"


{-| pr6
-}
pr6 : String
pr6 =
    "pr6"


{-| pr7
-}
pr7 : String
pr7 =
    "pr7"


{-| pb0
-}
pb0 : String
pb0 =
    "pb0"


{-| pb1
-}
pb1 : String
pb1 =
    "pb1"


{-| pb2
-}
pb2 : String
pb2 =
    "pb2"


{-| pb3
-}
pb3 : String
pb3 =
    "pb3"


{-| pb4
-}
pb4 : String
pb4 =
    "pb4"


{-| pb5
-}
pb5 : String
pb5 =
    "pb5"


{-| pb6
-}
pb6 : String
pb6 =
    "pb6"


{-| pb7
-}
pb7 : String
pb7 =
    "pb7"


{-| pt0
-}
pt0 : String
pt0 =
    "pt0"


{-| pt1
-}
pt1 : String
pt1 =
    "pt1"


{-| pt2
-}
pt2 : String
pt2 =
    "pt2"


{-| pt3
-}
pt3 : String
pt3 =
    "pt3"


{-| pt4
-}
pt4 : String
pt4 =
    "pt4"


{-| pt5
-}
pt5 : String
pt5 =
    "pt5"


{-| pt6
-}
pt6 : String
pt6 =
    "pt6"


{-| pt7
-}
pt7 : String
pt7 =
    "pt7"


{-| pv0
-}
pv0 : String
pv0 =
    "pv0"


{-| pv1
-}
pv1 : String
pv1 =
    "pv1"


{-| pv2
-}
pv2 : String
pv2 =
    "pv2"


{-| pv3
-}
pv3 : String
pv3 =
    "pv3"


{-| pv4
-}
pv4 : String
pv4 =
    "pv4"


{-| pv5
-}
pv5 : String
pv5 =
    "pv5"


{-| pv6
-}
pv6 : String
pv6 =
    "pv6"


{-| pv7
-}
pv7 : String
pv7 =
    "pv7"


{-| ph0
-}
ph0 : String
ph0 =
    "ph0"


{-| ph1
-}
ph1 : String
ph1 =
    "ph1"


{-| ph2
-}
ph2 : String
ph2 =
    "ph2"


{-| ph3
-}
ph3 : String
ph3 =
    "ph3"


{-| ph4
-}
ph4 : String
ph4 =
    "ph4"


{-| ph5
-}
ph5 : String
ph5 =
    "ph5"


{-| ph6
-}
ph6 : String
ph6 =
    "ph6"


{-| ph7
-}
ph7 : String
ph7 =
    "ph7"


{-| ma0
-}
ma0 : String
ma0 =
    "ma0"


{-| ma1
-}
ma1 : String
ma1 =
    "ma1"


{-| ma2
-}
ma2 : String
ma2 =
    "ma2"


{-| ma3
-}
ma3 : String
ma3 =
    "ma3"


{-| ma4
-}
ma4 : String
ma4 =
    "ma4"


{-| ma5
-}
ma5 : String
ma5 =
    "ma5"


{-| ma6
-}
ma6 : String
ma6 =
    "ma6"


{-| ma7
-}
ma7 : String
ma7 =
    "ma7"


{-| ml0
-}
ml0 : String
ml0 =
    "ml0"


{-| ml1
-}
ml1 : String
ml1 =
    "ml1"


{-| ml2
-}
ml2 : String
ml2 =
    "ml2"


{-| ml3
-}
ml3 : String
ml3 =
    "ml3"


{-| ml4
-}
ml4 : String
ml4 =
    "ml4"


{-| ml5
-}
ml5 : String
ml5 =
    "ml5"


{-| ml6
-}
ml6 : String
ml6 =
    "ml6"


{-| ml7
-}
ml7 : String
ml7 =
    "ml7"


{-| mr0
-}
mr0 : String
mr0 =
    "mr0"


{-| mr1
-}
mr1 : String
mr1 =
    "mr1"


{-| mr2
-}
mr2 : String
mr2 =
    "mr2"


{-| mr3
-}
mr3 : String
mr3 =
    "mr3"


{-| mr4
-}
mr4 : String
mr4 =
    "mr4"


{-| mr5
-}
mr5 : String
mr5 =
    "mr5"


{-| mr6
-}
mr6 : String
mr6 =
    "mr6"


{-| mr7
-}
mr7 : String
mr7 =
    "mr7"


{-| mb0
-}
mb0 : String
mb0 =
    "mb0"


{-| mb1
-}
mb1 : String
mb1 =
    "mb1"


{-| mb2
-}
mb2 : String
mb2 =
    "mb2"


{-| mb3
-}
mb3 : String
mb3 =
    "mb3"


{-| mb4
-}
mb4 : String
mb4 =
    "mb4"


{-| mb5
-}
mb5 : String
mb5 =
    "mb5"


{-| mb6
-}
mb6 : String
mb6 =
    "mb6"


{-| mb7
-}
mb7 : String
mb7 =
    "mb7"


{-| mt0
-}
mt0 : String
mt0 =
    "mt0"


{-| mt1
-}
mt1 : String
mt1 =
    "mt1"


{-| mt2
-}
mt2 : String
mt2 =
    "mt2"


{-| mt3
-}
mt3 : String
mt3 =
    "mt3"


{-| mt4
-}
mt4 : String
mt4 =
    "mt4"


{-| mt5
-}
mt5 : String
mt5 =
    "mt5"


{-| mt6
-}
mt6 : String
mt6 =
    "mt6"


{-| mt7
-}
mt7 : String
mt7 =
    "mt7"


{-| mv0
-}
mv0 : String
mv0 =
    "mv0"


{-| mv1
-}
mv1 : String
mv1 =
    "mv1"


{-| mv2
-}
mv2 : String
mv2 =
    "mv2"


{-| mv3
-}
mv3 : String
mv3 =
    "mv3"


{-| mv4
-}
mv4 : String
mv4 =
    "mv4"


{-| mv5
-}
mv5 : String
mv5 =
    "mv5"


{-| mv6
-}
mv6 : String
mv6 =
    "mv6"


{-| mv7
-}
mv7 : String
mv7 =
    "mv7"


{-| mh0
-}
mh0 : String
mh0 =
    "mh0"


{-| mh1
-}
mh1 : String
mh1 =
    "mh1"


{-| mh2
-}
mh2 : String
mh2 =
    "mh2"


{-| mh3
-}
mh3 : String
mh3 =
    "mh3"


{-| mh4
-}
mh4 : String
mh4 =
    "mh4"


{-| mh5
-}
mh5 : String
mh5 =
    "mh5"


{-| mh6
-}
mh6 : String
mh6 =
    "mh6"


{-| mh7
-}
mh7 : String
mh7 =
    "mh7"


{-| pa0_ns
-}
pa0_ns : String
pa0_ns =
    "pa0-ns"


{-| pa1_ns
-}
pa1_ns : String
pa1_ns =
    "pa1-ns"


{-| pa2_ns
-}
pa2_ns : String
pa2_ns =
    "pa2-ns"


{-| pa3_ns
-}
pa3_ns : String
pa3_ns =
    "pa3-ns"


{-| pa4_ns
-}
pa4_ns : String
pa4_ns =
    "pa4-ns"


{-| pa5_ns
-}
pa5_ns : String
pa5_ns =
    "pa5-ns"


{-| pa6_ns
-}
pa6_ns : String
pa6_ns =
    "pa6-ns"


{-| pa7_ns
-}
pa7_ns : String
pa7_ns =
    "pa7-ns"


{-| pl0_ns
-}
pl0_ns : String
pl0_ns =
    "pl0-ns"


{-| pl1_ns
-}
pl1_ns : String
pl1_ns =
    "pl1-ns"


{-| pl2_ns
-}
pl2_ns : String
pl2_ns =
    "pl2-ns"


{-| pl3_ns
-}
pl3_ns : String
pl3_ns =
    "pl3-ns"


{-| pl4_ns
-}
pl4_ns : String
pl4_ns =
    "pl4-ns"


{-| pl5_ns
-}
pl5_ns : String
pl5_ns =
    "pl5-ns"


{-| pl6_ns
-}
pl6_ns : String
pl6_ns =
    "pl6-ns"


{-| pl7_ns
-}
pl7_ns : String
pl7_ns =
    "pl7-ns"


{-| pr0_ns
-}
pr0_ns : String
pr0_ns =
    "pr0-ns"


{-| pr1_ns
-}
pr1_ns : String
pr1_ns =
    "pr1-ns"


{-| pr2_ns
-}
pr2_ns : String
pr2_ns =
    "pr2-ns"


{-| pr3_ns
-}
pr3_ns : String
pr3_ns =
    "pr3-ns"


{-| pr4_ns
-}
pr4_ns : String
pr4_ns =
    "pr4-ns"


{-| pr5_ns
-}
pr5_ns : String
pr5_ns =
    "pr5-ns"


{-| pr6_ns
-}
pr6_ns : String
pr6_ns =
    "pr6-ns"


{-| pr7_ns
-}
pr7_ns : String
pr7_ns =
    "pr7-ns"


{-| pb0_ns
-}
pb0_ns : String
pb0_ns =
    "pb0-ns"


{-| pb1_ns
-}
pb1_ns : String
pb1_ns =
    "pb1-ns"


{-| pb2_ns
-}
pb2_ns : String
pb2_ns =
    "pb2-ns"


{-| pb3_ns
-}
pb3_ns : String
pb3_ns =
    "pb3-ns"


{-| pb4_ns
-}
pb4_ns : String
pb4_ns =
    "pb4-ns"


{-| pb5_ns
-}
pb5_ns : String
pb5_ns =
    "pb5-ns"


{-| pb6_ns
-}
pb6_ns : String
pb6_ns =
    "pb6-ns"


{-| pb7_ns
-}
pb7_ns : String
pb7_ns =
    "pb7-ns"


{-| pt0_ns
-}
pt0_ns : String
pt0_ns =
    "pt0-ns"


{-| pt1_ns
-}
pt1_ns : String
pt1_ns =
    "pt1-ns"


{-| pt2_ns
-}
pt2_ns : String
pt2_ns =
    "pt2-ns"


{-| pt3_ns
-}
pt3_ns : String
pt3_ns =
    "pt3-ns"


{-| pt4_ns
-}
pt4_ns : String
pt4_ns =
    "pt4-ns"


{-| pt5_ns
-}
pt5_ns : String
pt5_ns =
    "pt5-ns"


{-| pt6_ns
-}
pt6_ns : String
pt6_ns =
    "pt6-ns"


{-| pt7_ns
-}
pt7_ns : String
pt7_ns =
    "pt7-ns"


{-| pv0_ns
-}
pv0_ns : String
pv0_ns =
    "pv0-ns"


{-| pv1_ns
-}
pv1_ns : String
pv1_ns =
    "pv1-ns"


{-| pv2_ns
-}
pv2_ns : String
pv2_ns =
    "pv2-ns"


{-| pv3_ns
-}
pv3_ns : String
pv3_ns =
    "pv3-ns"


{-| pv4_ns
-}
pv4_ns : String
pv4_ns =
    "pv4-ns"


{-| pv5_ns
-}
pv5_ns : String
pv5_ns =
    "pv5-ns"


{-| pv6_ns
-}
pv6_ns : String
pv6_ns =
    "pv6-ns"


{-| pv7_ns
-}
pv7_ns : String
pv7_ns =
    "pv7-ns"


{-| ph0_ns
-}
ph0_ns : String
ph0_ns =
    "ph0-ns"


{-| ph1_ns
-}
ph1_ns : String
ph1_ns =
    "ph1-ns"


{-| ph2_ns
-}
ph2_ns : String
ph2_ns =
    "ph2-ns"


{-| ph3_ns
-}
ph3_ns : String
ph3_ns =
    "ph3-ns"


{-| ph4_ns
-}
ph4_ns : String
ph4_ns =
    "ph4-ns"


{-| ph5_ns
-}
ph5_ns : String
ph5_ns =
    "ph5-ns"


{-| ph6_ns
-}
ph6_ns : String
ph6_ns =
    "ph6-ns"


{-| ph7_ns
-}
ph7_ns : String
ph7_ns =
    "ph7-ns"


{-| ma0_ns
-}
ma0_ns : String
ma0_ns =
    "ma0-ns"


{-| ma1_ns
-}
ma1_ns : String
ma1_ns =
    "ma1-ns"


{-| ma2_ns
-}
ma2_ns : String
ma2_ns =
    "ma2-ns"


{-| ma3_ns
-}
ma3_ns : String
ma3_ns =
    "ma3-ns"


{-| ma4_ns
-}
ma4_ns : String
ma4_ns =
    "ma4-ns"


{-| ma5_ns
-}
ma5_ns : String
ma5_ns =
    "ma5-ns"


{-| ma6_ns
-}
ma6_ns : String
ma6_ns =
    "ma6-ns"


{-| ma7_ns
-}
ma7_ns : String
ma7_ns =
    "ma7-ns"


{-| ml0_ns
-}
ml0_ns : String
ml0_ns =
    "ml0-ns"


{-| ml1_ns
-}
ml1_ns : String
ml1_ns =
    "ml1-ns"


{-| ml2_ns
-}
ml2_ns : String
ml2_ns =
    "ml2-ns"


{-| ml3_ns
-}
ml3_ns : String
ml3_ns =
    "ml3-ns"


{-| ml4_ns
-}
ml4_ns : String
ml4_ns =
    "ml4-ns"


{-| ml5_ns
-}
ml5_ns : String
ml5_ns =
    "ml5-ns"


{-| ml6_ns
-}
ml6_ns : String
ml6_ns =
    "ml6-ns"


{-| ml7_ns
-}
ml7_ns : String
ml7_ns =
    "ml7-ns"


{-| mr0_ns
-}
mr0_ns : String
mr0_ns =
    "mr0-ns"


{-| mr1_ns
-}
mr1_ns : String
mr1_ns =
    "mr1-ns"


{-| mr2_ns
-}
mr2_ns : String
mr2_ns =
    "mr2-ns"


{-| mr3_ns
-}
mr3_ns : String
mr3_ns =
    "mr3-ns"


{-| mr4_ns
-}
mr4_ns : String
mr4_ns =
    "mr4-ns"


{-| mr5_ns
-}
mr5_ns : String
mr5_ns =
    "mr5-ns"


{-| mr6_ns
-}
mr6_ns : String
mr6_ns =
    "mr6-ns"


{-| mr7_ns
-}
mr7_ns : String
mr7_ns =
    "mr7-ns"


{-| mb0_ns
-}
mb0_ns : String
mb0_ns =
    "mb0-ns"


{-| mb1_ns
-}
mb1_ns : String
mb1_ns =
    "mb1-ns"


{-| mb2_ns
-}
mb2_ns : String
mb2_ns =
    "mb2-ns"


{-| mb3_ns
-}
mb3_ns : String
mb3_ns =
    "mb3-ns"


{-| mb4_ns
-}
mb4_ns : String
mb4_ns =
    "mb4-ns"


{-| mb5_ns
-}
mb5_ns : String
mb5_ns =
    "mb5-ns"


{-| mb6_ns
-}
mb6_ns : String
mb6_ns =
    "mb6-ns"


{-| mb7_ns
-}
mb7_ns : String
mb7_ns =
    "mb7-ns"


{-| mt0_ns
-}
mt0_ns : String
mt0_ns =
    "mt0-ns"


{-| mt1_ns
-}
mt1_ns : String
mt1_ns =
    "mt1-ns"


{-| mt2_ns
-}
mt2_ns : String
mt2_ns =
    "mt2-ns"


{-| mt3_ns
-}
mt3_ns : String
mt3_ns =
    "mt3-ns"


{-| mt4_ns
-}
mt4_ns : String
mt4_ns =
    "mt4-ns"


{-| mt5_ns
-}
mt5_ns : String
mt5_ns =
    "mt5-ns"


{-| mt6_ns
-}
mt6_ns : String
mt6_ns =
    "mt6-ns"


{-| mt7_ns
-}
mt7_ns : String
mt7_ns =
    "mt7-ns"


{-| mv0_ns
-}
mv0_ns : String
mv0_ns =
    "mv0-ns"


{-| mv1_ns
-}
mv1_ns : String
mv1_ns =
    "mv1-ns"


{-| mv2_ns
-}
mv2_ns : String
mv2_ns =
    "mv2-ns"


{-| mv3_ns
-}
mv3_ns : String
mv3_ns =
    "mv3-ns"


{-| mv4_ns
-}
mv4_ns : String
mv4_ns =
    "mv4-ns"


{-| mv5_ns
-}
mv5_ns : String
mv5_ns =
    "mv5-ns"


{-| mv6_ns
-}
mv6_ns : String
mv6_ns =
    "mv6-ns"


{-| mv7_ns
-}
mv7_ns : String
mv7_ns =
    "mv7-ns"


{-| mh0_ns
-}
mh0_ns : String
mh0_ns =
    "mh0-ns"


{-| mh1_ns
-}
mh1_ns : String
mh1_ns =
    "mh1-ns"


{-| mh2_ns
-}
mh2_ns : String
mh2_ns =
    "mh2-ns"


{-| mh3_ns
-}
mh3_ns : String
mh3_ns =
    "mh3-ns"


{-| mh4_ns
-}
mh4_ns : String
mh4_ns =
    "mh4-ns"


{-| mh5_ns
-}
mh5_ns : String
mh5_ns =
    "mh5-ns"


{-| mh6_ns
-}
mh6_ns : String
mh6_ns =
    "mh6-ns"


{-| mh7_ns
-}
mh7_ns : String
mh7_ns =
    "mh7-ns"


{-| pa0_m
-}
pa0_m : String
pa0_m =
    "pa0-m"


{-| pa1_m
-}
pa1_m : String
pa1_m =
    "pa1-m"


{-| pa2_m
-}
pa2_m : String
pa2_m =
    "pa2-m"


{-| pa3_m
-}
pa3_m : String
pa3_m =
    "pa3-m"


{-| pa4_m
-}
pa4_m : String
pa4_m =
    "pa4-m"


{-| pa5_m
-}
pa5_m : String
pa5_m =
    "pa5-m"


{-| pa6_m
-}
pa6_m : String
pa6_m =
    "pa6-m"


{-| pa7_m
-}
pa7_m : String
pa7_m =
    "pa7-m"


{-| pl0_m
-}
pl0_m : String
pl0_m =
    "pl0-m"


{-| pl1_m
-}
pl1_m : String
pl1_m =
    "pl1-m"


{-| pl2_m
-}
pl2_m : String
pl2_m =
    "pl2-m"


{-| pl3_m
-}
pl3_m : String
pl3_m =
    "pl3-m"


{-| pl4_m
-}
pl4_m : String
pl4_m =
    "pl4-m"


{-| pl5_m
-}
pl5_m : String
pl5_m =
    "pl5-m"


{-| pl6_m
-}
pl6_m : String
pl6_m =
    "pl6-m"


{-| pl7_m
-}
pl7_m : String
pl7_m =
    "pl7-m"


{-| pr0_m
-}
pr0_m : String
pr0_m =
    "pr0-m"


{-| pr1_m
-}
pr1_m : String
pr1_m =
    "pr1-m"


{-| pr2_m
-}
pr2_m : String
pr2_m =
    "pr2-m"


{-| pr3_m
-}
pr3_m : String
pr3_m =
    "pr3-m"


{-| pr4_m
-}
pr4_m : String
pr4_m =
    "pr4-m"


{-| pr5_m
-}
pr5_m : String
pr5_m =
    "pr5-m"


{-| pr6_m
-}
pr6_m : String
pr6_m =
    "pr6-m"


{-| pr7_m
-}
pr7_m : String
pr7_m =
    "pr7-m"


{-| pb0_m
-}
pb0_m : String
pb0_m =
    "pb0-m"


{-| pb1_m
-}
pb1_m : String
pb1_m =
    "pb1-m"


{-| pb2_m
-}
pb2_m : String
pb2_m =
    "pb2-m"


{-| pb3_m
-}
pb3_m : String
pb3_m =
    "pb3-m"


{-| pb4_m
-}
pb4_m : String
pb4_m =
    "pb4-m"


{-| pb5_m
-}
pb5_m : String
pb5_m =
    "pb5-m"


{-| pb6_m
-}
pb6_m : String
pb6_m =
    "pb6-m"


{-| pb7_m
-}
pb7_m : String
pb7_m =
    "pb7-m"


{-| pt0_m
-}
pt0_m : String
pt0_m =
    "pt0-m"


{-| pt1_m
-}
pt1_m : String
pt1_m =
    "pt1-m"


{-| pt2_m
-}
pt2_m : String
pt2_m =
    "pt2-m"


{-| pt3_m
-}
pt3_m : String
pt3_m =
    "pt3-m"


{-| pt4_m
-}
pt4_m : String
pt4_m =
    "pt4-m"


{-| pt5_m
-}
pt5_m : String
pt5_m =
    "pt5-m"


{-| pt6_m
-}
pt6_m : String
pt6_m =
    "pt6-m"


{-| pt7_m
-}
pt7_m : String
pt7_m =
    "pt7-m"


{-| pv0_m
-}
pv0_m : String
pv0_m =
    "pv0-m"


{-| pv1_m
-}
pv1_m : String
pv1_m =
    "pv1-m"


{-| pv2_m
-}
pv2_m : String
pv2_m =
    "pv2-m"


{-| pv3_m
-}
pv3_m : String
pv3_m =
    "pv3-m"


{-| pv4_m
-}
pv4_m : String
pv4_m =
    "pv4-m"


{-| pv5_m
-}
pv5_m : String
pv5_m =
    "pv5-m"


{-| pv6_m
-}
pv6_m : String
pv6_m =
    "pv6-m"


{-| pv7_m
-}
pv7_m : String
pv7_m =
    "pv7-m"


{-| ph0_m
-}
ph0_m : String
ph0_m =
    "ph0-m"


{-| ph1_m
-}
ph1_m : String
ph1_m =
    "ph1-m"


{-| ph2_m
-}
ph2_m : String
ph2_m =
    "ph2-m"


{-| ph3_m
-}
ph3_m : String
ph3_m =
    "ph3-m"


{-| ph4_m
-}
ph4_m : String
ph4_m =
    "ph4-m"


{-| ph5_m
-}
ph5_m : String
ph5_m =
    "ph5-m"


{-| ph6_m
-}
ph6_m : String
ph6_m =
    "ph6-m"


{-| ph7_m
-}
ph7_m : String
ph7_m =
    "ph7-m"


{-| ma0_m
-}
ma0_m : String
ma0_m =
    "ma0-m"


{-| ma1_m
-}
ma1_m : String
ma1_m =
    "ma1-m"


{-| ma2_m
-}
ma2_m : String
ma2_m =
    "ma2-m"


{-| ma3_m
-}
ma3_m : String
ma3_m =
    "ma3-m"


{-| ma4_m
-}
ma4_m : String
ma4_m =
    "ma4-m"


{-| ma5_m
-}
ma5_m : String
ma5_m =
    "ma5-m"


{-| ma6_m
-}
ma6_m : String
ma6_m =
    "ma6-m"


{-| ma7_m
-}
ma7_m : String
ma7_m =
    "ma7-m"


{-| ml0_m
-}
ml0_m : String
ml0_m =
    "ml0-m"


{-| ml1_m
-}
ml1_m : String
ml1_m =
    "ml1-m"


{-| ml2_m
-}
ml2_m : String
ml2_m =
    "ml2-m"


{-| ml3_m
-}
ml3_m : String
ml3_m =
    "ml3-m"


{-| ml4_m
-}
ml4_m : String
ml4_m =
    "ml4-m"


{-| ml5_m
-}
ml5_m : String
ml5_m =
    "ml5-m"


{-| ml6_m
-}
ml6_m : String
ml6_m =
    "ml6-m"


{-| ml7_m
-}
ml7_m : String
ml7_m =
    "ml7-m"


{-| mr0_m
-}
mr0_m : String
mr0_m =
    "mr0-m"


{-| mr1_m
-}
mr1_m : String
mr1_m =
    "mr1-m"


{-| mr2_m
-}
mr2_m : String
mr2_m =
    "mr2-m"


{-| mr3_m
-}
mr3_m : String
mr3_m =
    "mr3-m"


{-| mr4_m
-}
mr4_m : String
mr4_m =
    "mr4-m"


{-| mr5_m
-}
mr5_m : String
mr5_m =
    "mr5-m"


{-| mr6_m
-}
mr6_m : String
mr6_m =
    "mr6-m"


{-| mr7_m
-}
mr7_m : String
mr7_m =
    "mr7-m"


{-| mb0_m
-}
mb0_m : String
mb0_m =
    "mb0-m"


{-| mb1_m
-}
mb1_m : String
mb1_m =
    "mb1-m"


{-| mb2_m
-}
mb2_m : String
mb2_m =
    "mb2-m"


{-| mb3_m
-}
mb3_m : String
mb3_m =
    "mb3-m"


{-| mb4_m
-}
mb4_m : String
mb4_m =
    "mb4-m"


{-| mb5_m
-}
mb5_m : String
mb5_m =
    "mb5-m"


{-| mb6_m
-}
mb6_m : String
mb6_m =
    "mb6-m"


{-| mb7_m
-}
mb7_m : String
mb7_m =
    "mb7-m"


{-| mt0_m
-}
mt0_m : String
mt0_m =
    "mt0-m"


{-| mt1_m
-}
mt1_m : String
mt1_m =
    "mt1-m"


{-| mt2_m
-}
mt2_m : String
mt2_m =
    "mt2-m"


{-| mt3_m
-}
mt3_m : String
mt3_m =
    "mt3-m"


{-| mt4_m
-}
mt4_m : String
mt4_m =
    "mt4-m"


{-| mt5_m
-}
mt5_m : String
mt5_m =
    "mt5-m"


{-| mt6_m
-}
mt6_m : String
mt6_m =
    "mt6-m"


{-| mt7_m
-}
mt7_m : String
mt7_m =
    "mt7-m"


{-| mv0_m
-}
mv0_m : String
mv0_m =
    "mv0-m"


{-| mv1_m
-}
mv1_m : String
mv1_m =
    "mv1-m"


{-| mv2_m
-}
mv2_m : String
mv2_m =
    "mv2-m"


{-| mv3_m
-}
mv3_m : String
mv3_m =
    "mv3-m"


{-| mv4_m
-}
mv4_m : String
mv4_m =
    "mv4-m"


{-| mv5_m
-}
mv5_m : String
mv5_m =
    "mv5-m"


{-| mv6_m
-}
mv6_m : String
mv6_m =
    "mv6-m"


{-| mv7_m
-}
mv7_m : String
mv7_m =
    "mv7-m"


{-| mh0_m
-}
mh0_m : String
mh0_m =
    "mh0-m"


{-| mh1_m
-}
mh1_m : String
mh1_m =
    "mh1-m"


{-| mh2_m
-}
mh2_m : String
mh2_m =
    "mh2-m"


{-| mh3_m
-}
mh3_m : String
mh3_m =
    "mh3-m"


{-| mh4_m
-}
mh4_m : String
mh4_m =
    "mh4-m"


{-| mh5_m
-}
mh5_m : String
mh5_m =
    "mh5-m"


{-| mh6_m
-}
mh6_m : String
mh6_m =
    "mh6-m"


{-| mh7_m
-}
mh7_m : String
mh7_m =
    "mh7-m"


{-| pa0_l
-}
pa0_l : String
pa0_l =
    "pa0-l"


{-| pa1_l
-}
pa1_l : String
pa1_l =
    "pa1-l"


{-| pa2_l
-}
pa2_l : String
pa2_l =
    "pa2-l"


{-| pa3_l
-}
pa3_l : String
pa3_l =
    "pa3-l"


{-| pa4_l
-}
pa4_l : String
pa4_l =
    "pa4-l"


{-| pa5_l
-}
pa5_l : String
pa5_l =
    "pa5-l"


{-| pa6_l
-}
pa6_l : String
pa6_l =
    "pa6-l"


{-| pa7_l
-}
pa7_l : String
pa7_l =
    "pa7-l"


{-| pl0_l
-}
pl0_l : String
pl0_l =
    "pl0-l"


{-| pl1_l
-}
pl1_l : String
pl1_l =
    "pl1-l"


{-| pl2_l
-}
pl2_l : String
pl2_l =
    "pl2-l"


{-| pl3_l
-}
pl3_l : String
pl3_l =
    "pl3-l"


{-| pl4_l
-}
pl4_l : String
pl4_l =
    "pl4-l"


{-| pl5_l
-}
pl5_l : String
pl5_l =
    "pl5-l"


{-| pl6_l
-}
pl6_l : String
pl6_l =
    "pl6-l"


{-| pl7_l
-}
pl7_l : String
pl7_l =
    "pl7-l"


{-| pr0_l
-}
pr0_l : String
pr0_l =
    "pr0-l"


{-| pr1_l
-}
pr1_l : String
pr1_l =
    "pr1-l"


{-| pr2_l
-}
pr2_l : String
pr2_l =
    "pr2-l"


{-| pr3_l
-}
pr3_l : String
pr3_l =
    "pr3-l"


{-| pr4_l
-}
pr4_l : String
pr4_l =
    "pr4-l"


{-| pr5_l
-}
pr5_l : String
pr5_l =
    "pr5-l"


{-| pr6_l
-}
pr6_l : String
pr6_l =
    "pr6-l"


{-| pr7_l
-}
pr7_l : String
pr7_l =
    "pr7-l"


{-| pb0_l
-}
pb0_l : String
pb0_l =
    "pb0-l"


{-| pb1_l
-}
pb1_l : String
pb1_l =
    "pb1-l"


{-| pb2_l
-}
pb2_l : String
pb2_l =
    "pb2-l"


{-| pb3_l
-}
pb3_l : String
pb3_l =
    "pb3-l"


{-| pb4_l
-}
pb4_l : String
pb4_l =
    "pb4-l"


{-| pb5_l
-}
pb5_l : String
pb5_l =
    "pb5-l"


{-| pb6_l
-}
pb6_l : String
pb6_l =
    "pb6-l"


{-| pb7_l
-}
pb7_l : String
pb7_l =
    "pb7-l"


{-| pt0_l
-}
pt0_l : String
pt0_l =
    "pt0-l"


{-| pt1_l
-}
pt1_l : String
pt1_l =
    "pt1-l"


{-| pt2_l
-}
pt2_l : String
pt2_l =
    "pt2-l"


{-| pt3_l
-}
pt3_l : String
pt3_l =
    "pt3-l"


{-| pt4_l
-}
pt4_l : String
pt4_l =
    "pt4-l"


{-| pt5_l
-}
pt5_l : String
pt5_l =
    "pt5-l"


{-| pt6_l
-}
pt6_l : String
pt6_l =
    "pt6-l"


{-| pt7_l
-}
pt7_l : String
pt7_l =
    "pt7-l"


{-| pv0_l
-}
pv0_l : String
pv0_l =
    "pv0-l"


{-| pv1_l
-}
pv1_l : String
pv1_l =
    "pv1-l"


{-| pv2_l
-}
pv2_l : String
pv2_l =
    "pv2-l"


{-| pv3_l
-}
pv3_l : String
pv3_l =
    "pv3-l"


{-| pv4_l
-}
pv4_l : String
pv4_l =
    "pv4-l"


{-| pv5_l
-}
pv5_l : String
pv5_l =
    "pv5-l"


{-| pv6_l
-}
pv6_l : String
pv6_l =
    "pv6-l"


{-| pv7_l
-}
pv7_l : String
pv7_l =
    "pv7-l"


{-| ph0_l
-}
ph0_l : String
ph0_l =
    "ph0-l"


{-| ph1_l
-}
ph1_l : String
ph1_l =
    "ph1-l"


{-| ph2_l
-}
ph2_l : String
ph2_l =
    "ph2-l"


{-| ph3_l
-}
ph3_l : String
ph3_l =
    "ph3-l"


{-| ph4_l
-}
ph4_l : String
ph4_l =
    "ph4-l"


{-| ph5_l
-}
ph5_l : String
ph5_l =
    "ph5-l"


{-| ph6_l
-}
ph6_l : String
ph6_l =
    "ph6-l"


{-| ph7_l
-}
ph7_l : String
ph7_l =
    "ph7-l"


{-| ma0_l
-}
ma0_l : String
ma0_l =
    "ma0-l"


{-| ma1_l
-}
ma1_l : String
ma1_l =
    "ma1-l"


{-| ma2_l
-}
ma2_l : String
ma2_l =
    "ma2-l"


{-| ma3_l
-}
ma3_l : String
ma3_l =
    "ma3-l"


{-| ma4_l
-}
ma4_l : String
ma4_l =
    "ma4-l"


{-| ma5_l
-}
ma5_l : String
ma5_l =
    "ma5-l"


{-| ma6_l
-}
ma6_l : String
ma6_l =
    "ma6-l"


{-| ma7_l
-}
ma7_l : String
ma7_l =
    "ma7-l"


{-| ml0_l
-}
ml0_l : String
ml0_l =
    "ml0-l"


{-| ml1_l
-}
ml1_l : String
ml1_l =
    "ml1-l"


{-| ml2_l
-}
ml2_l : String
ml2_l =
    "ml2-l"


{-| ml3_l
-}
ml3_l : String
ml3_l =
    "ml3-l"


{-| ml4_l
-}
ml4_l : String
ml4_l =
    "ml4-l"


{-| ml5_l
-}
ml5_l : String
ml5_l =
    "ml5-l"


{-| ml6_l
-}
ml6_l : String
ml6_l =
    "ml6-l"


{-| ml7_l
-}
ml7_l : String
ml7_l =
    "ml7-l"


{-| mr0_l
-}
mr0_l : String
mr0_l =
    "mr0-l"


{-| mr1_l
-}
mr1_l : String
mr1_l =
    "mr1-l"


{-| mr2_l
-}
mr2_l : String
mr2_l =
    "mr2-l"


{-| mr3_l
-}
mr3_l : String
mr3_l =
    "mr3-l"


{-| mr4_l
-}
mr4_l : String
mr4_l =
    "mr4-l"


{-| mr5_l
-}
mr5_l : String
mr5_l =
    "mr5-l"


{-| mr6_l
-}
mr6_l : String
mr6_l =
    "mr6-l"


{-| mr7_l
-}
mr7_l : String
mr7_l =
    "mr7-l"


{-| mb0_l
-}
mb0_l : String
mb0_l =
    "mb0-l"


{-| mb1_l
-}
mb1_l : String
mb1_l =
    "mb1-l"


{-| mb2_l
-}
mb2_l : String
mb2_l =
    "mb2-l"


{-| mb3_l
-}
mb3_l : String
mb3_l =
    "mb3-l"


{-| mb4_l
-}
mb4_l : String
mb4_l =
    "mb4-l"


{-| mb5_l
-}
mb5_l : String
mb5_l =
    "mb5-l"


{-| mb6_l
-}
mb6_l : String
mb6_l =
    "mb6-l"


{-| mb7_l
-}
mb7_l : String
mb7_l =
    "mb7-l"


{-| mt0_l
-}
mt0_l : String
mt0_l =
    "mt0-l"


{-| mt1_l
-}
mt1_l : String
mt1_l =
    "mt1-l"


{-| mt2_l
-}
mt2_l : String
mt2_l =
    "mt2-l"


{-| mt3_l
-}
mt3_l : String
mt3_l =
    "mt3-l"


{-| mt4_l
-}
mt4_l : String
mt4_l =
    "mt4-l"


{-| mt5_l
-}
mt5_l : String
mt5_l =
    "mt5-l"


{-| mt6_l
-}
mt6_l : String
mt6_l =
    "mt6-l"


{-| mt7_l
-}
mt7_l : String
mt7_l =
    "mt7-l"


{-| mv0_l
-}
mv0_l : String
mv0_l =
    "mv0-l"


{-| mv1_l
-}
mv1_l : String
mv1_l =
    "mv1-l"


{-| mv2_l
-}
mv2_l : String
mv2_l =
    "mv2-l"


{-| mv3_l
-}
mv3_l : String
mv3_l =
    "mv3-l"


{-| mv4_l
-}
mv4_l : String
mv4_l =
    "mv4-l"


{-| mv5_l
-}
mv5_l : String
mv5_l =
    "mv5-l"


{-| mv6_l
-}
mv6_l : String
mv6_l =
    "mv6-l"


{-| mv7_l
-}
mv7_l : String
mv7_l =
    "mv7-l"


{-| mh0_l
-}
mh0_l : String
mh0_l =
    "mh0-l"


{-| mh1_l
-}
mh1_l : String
mh1_l =
    "mh1-l"


{-| mh2_l
-}
mh2_l : String
mh2_l =
    "mh2-l"


{-| mh3_l
-}
mh3_l : String
mh3_l =
    "mh3-l"


{-| mh4_l
-}
mh4_l : String
mh4_l =
    "mh4-l"


{-| mh5_l
-}
mh5_l : String
mh5_l =
    "mh5-l"


{-| mh6_l
-}
mh6_l : String
mh6_l =
    "mh6-l"


{-| mh7_l
-}
mh7_l : String
mh7_l =
    "mh7-l"


{-| na1
-}
na1 : String
na1 =
    "na1"


{-| na2
-}
na2 : String
na2 =
    "na2"


{-| na3
-}
na3 : String
na3 =
    "na3"


{-| na4
-}
na4 : String
na4 =
    "na4"


{-| na5
-}
na5 : String
na5 =
    "na5"


{-| na6
-}
na6 : String
na6 =
    "na6"


{-| na7
-}
na7 : String
na7 =
    "na7"


{-| nl1
-}
nl1 : String
nl1 =
    "nl1"


{-| nl2
-}
nl2 : String
nl2 =
    "nl2"


{-| nl3
-}
nl3 : String
nl3 =
    "nl3"


{-| nl4
-}
nl4 : String
nl4 =
    "nl4"


{-| nl5
-}
nl5 : String
nl5 =
    "nl5"


{-| nl6
-}
nl6 : String
nl6 =
    "nl6"


{-| nl7
-}
nl7 : String
nl7 =
    "nl7"


{-| nr1
-}
nr1 : String
nr1 =
    "nr1"


{-| nr2
-}
nr2 : String
nr2 =
    "nr2"


{-| nr3
-}
nr3 : String
nr3 =
    "nr3"


{-| nr4
-}
nr4 : String
nr4 =
    "nr4"


{-| nr5
-}
nr5 : String
nr5 =
    "nr5"


{-| nr6
-}
nr6 : String
nr6 =
    "nr6"


{-| nr7
-}
nr7 : String
nr7 =
    "nr7"


{-| nb1
-}
nb1 : String
nb1 =
    "nb1"


{-| nb2
-}
nb2 : String
nb2 =
    "nb2"


{-| nb3
-}
nb3 : String
nb3 =
    "nb3"


{-| nb4
-}
nb4 : String
nb4 =
    "nb4"


{-| nb5
-}
nb5 : String
nb5 =
    "nb5"


{-| nb6
-}
nb6 : String
nb6 =
    "nb6"


{-| nb7
-}
nb7 : String
nb7 =
    "nb7"


{-| nt1
-}
nt1 : String
nt1 =
    "nt1"


{-| nt2
-}
nt2 : String
nt2 =
    "nt2"


{-| nt3
-}
nt3 : String
nt3 =
    "nt3"


{-| nt4
-}
nt4 : String
nt4 =
    "nt4"


{-| nt5
-}
nt5 : String
nt5 =
    "nt5"


{-| nt6
-}
nt6 : String
nt6 =
    "nt6"


{-| nt7
-}
nt7 : String
nt7 =
    "nt7"


{-| na1_ns
-}
na1_ns : String
na1_ns =
    "na1-ns"


{-| na2_ns
-}
na2_ns : String
na2_ns =
    "na2-ns"


{-| na3_ns
-}
na3_ns : String
na3_ns =
    "na3-ns"


{-| na4_ns
-}
na4_ns : String
na4_ns =
    "na4-ns"


{-| na5_ns
-}
na5_ns : String
na5_ns =
    "na5-ns"


{-| na6_ns
-}
na6_ns : String
na6_ns =
    "na6-ns"


{-| na7_ns
-}
na7_ns : String
na7_ns =
    "na7-ns"


{-| nl1_ns
-}
nl1_ns : String
nl1_ns =
    "nl1-ns"


{-| nl2_ns
-}
nl2_ns : String
nl2_ns =
    "nl2-ns"


{-| nl3_ns
-}
nl3_ns : String
nl3_ns =
    "nl3-ns"


{-| nl4_ns
-}
nl4_ns : String
nl4_ns =
    "nl4-ns"


{-| nl5_ns
-}
nl5_ns : String
nl5_ns =
    "nl5-ns"


{-| nl6_ns
-}
nl6_ns : String
nl6_ns =
    "nl6-ns"


{-| nl7_ns
-}
nl7_ns : String
nl7_ns =
    "nl7-ns"


{-| nr1_ns
-}
nr1_ns : String
nr1_ns =
    "nr1-ns"


{-| nr2_ns
-}
nr2_ns : String
nr2_ns =
    "nr2-ns"


{-| nr3_ns
-}
nr3_ns : String
nr3_ns =
    "nr3-ns"


{-| nr4_ns
-}
nr4_ns : String
nr4_ns =
    "nr4-ns"


{-| nr5_ns
-}
nr5_ns : String
nr5_ns =
    "nr5-ns"


{-| nr6_ns
-}
nr6_ns : String
nr6_ns =
    "nr6-ns"


{-| nr7_ns
-}
nr7_ns : String
nr7_ns =
    "nr7-ns"


{-| nb1_ns
-}
nb1_ns : String
nb1_ns =
    "nb1-ns"


{-| nb2_ns
-}
nb2_ns : String
nb2_ns =
    "nb2-ns"


{-| nb3_ns
-}
nb3_ns : String
nb3_ns =
    "nb3-ns"


{-| nb4_ns
-}
nb4_ns : String
nb4_ns =
    "nb4-ns"


{-| nb5_ns
-}
nb5_ns : String
nb5_ns =
    "nb5-ns"


{-| nb6_ns
-}
nb6_ns : String
nb6_ns =
    "nb6-ns"


{-| nb7_ns
-}
nb7_ns : String
nb7_ns =
    "nb7-ns"


{-| nt1_ns
-}
nt1_ns : String
nt1_ns =
    "nt1-ns"


{-| nt2_ns
-}
nt2_ns : String
nt2_ns =
    "nt2-ns"


{-| nt3_ns
-}
nt3_ns : String
nt3_ns =
    "nt3-ns"


{-| nt4_ns
-}
nt4_ns : String
nt4_ns =
    "nt4-ns"


{-| nt5_ns
-}
nt5_ns : String
nt5_ns =
    "nt5-ns"


{-| nt6_ns
-}
nt6_ns : String
nt6_ns =
    "nt6-ns"


{-| nt7_ns
-}
nt7_ns : String
nt7_ns =
    "nt7-ns"


{-| na1_m
-}
na1_m : String
na1_m =
    "na1-m"


{-| na2_m
-}
na2_m : String
na2_m =
    "na2-m"


{-| na3_m
-}
na3_m : String
na3_m =
    "na3-m"


{-| na4_m
-}
na4_m : String
na4_m =
    "na4-m"


{-| na5_m
-}
na5_m : String
na5_m =
    "na5-m"


{-| na6_m
-}
na6_m : String
na6_m =
    "na6-m"


{-| na7_m
-}
na7_m : String
na7_m =
    "na7-m"


{-| nl1_m
-}
nl1_m : String
nl1_m =
    "nl1-m"


{-| nl2_m
-}
nl2_m : String
nl2_m =
    "nl2-m"


{-| nl3_m
-}
nl3_m : String
nl3_m =
    "nl3-m"


{-| nl4_m
-}
nl4_m : String
nl4_m =
    "nl4-m"


{-| nl5_m
-}
nl5_m : String
nl5_m =
    "nl5-m"


{-| nl6_m
-}
nl6_m : String
nl6_m =
    "nl6-m"


{-| nl7_m
-}
nl7_m : String
nl7_m =
    "nl7-m"


{-| nr1_m
-}
nr1_m : String
nr1_m =
    "nr1-m"


{-| nr2_m
-}
nr2_m : String
nr2_m =
    "nr2-m"


{-| nr3_m
-}
nr3_m : String
nr3_m =
    "nr3-m"


{-| nr4_m
-}
nr4_m : String
nr4_m =
    "nr4-m"


{-| nr5_m
-}
nr5_m : String
nr5_m =
    "nr5-m"


{-| nr6_m
-}
nr6_m : String
nr6_m =
    "nr6-m"


{-| nr7_m
-}
nr7_m : String
nr7_m =
    "nr7-m"


{-| nb1_m
-}
nb1_m : String
nb1_m =
    "nb1-m"


{-| nb2_m
-}
nb2_m : String
nb2_m =
    "nb2-m"


{-| nb3_m
-}
nb3_m : String
nb3_m =
    "nb3-m"


{-| nb4_m
-}
nb4_m : String
nb4_m =
    "nb4-m"


{-| nb5_m
-}
nb5_m : String
nb5_m =
    "nb5-m"


{-| nb6_m
-}
nb6_m : String
nb6_m =
    "nb6-m"


{-| nb7_m
-}
nb7_m : String
nb7_m =
    "nb7-m"


{-| nt1_m
-}
nt1_m : String
nt1_m =
    "nt1-m"


{-| nt2_m
-}
nt2_m : String
nt2_m =
    "nt2-m"


{-| nt3_m
-}
nt3_m : String
nt3_m =
    "nt3-m"


{-| nt4_m
-}
nt4_m : String
nt4_m =
    "nt4-m"


{-| nt5_m
-}
nt5_m : String
nt5_m =
    "nt5-m"


{-| nt6_m
-}
nt6_m : String
nt6_m =
    "nt6-m"


{-| nt7_m
-}
nt7_m : String
nt7_m =
    "nt7-m"


{-| na1_l
-}
na1_l : String
na1_l =
    "na1-l"


{-| na2_l
-}
na2_l : String
na2_l =
    "na2-l"


{-| na3_l
-}
na3_l : String
na3_l =
    "na3-l"


{-| na4_l
-}
na4_l : String
na4_l =
    "na4-l"


{-| na5_l
-}
na5_l : String
na5_l =
    "na5-l"


{-| na6_l
-}
na6_l : String
na6_l =
    "na6-l"


{-| na7_l
-}
na7_l : String
na7_l =
    "na7-l"


{-| nl1_l
-}
nl1_l : String
nl1_l =
    "nl1-l"


{-| nl2_l
-}
nl2_l : String
nl2_l =
    "nl2-l"


{-| nl3_l
-}
nl3_l : String
nl3_l =
    "nl3-l"


{-| nl4_l
-}
nl4_l : String
nl4_l =
    "nl4-l"


{-| nl5_l
-}
nl5_l : String
nl5_l =
    "nl5-l"


{-| nl6_l
-}
nl6_l : String
nl6_l =
    "nl6-l"


{-| nl7_l
-}
nl7_l : String
nl7_l =
    "nl7-l"


{-| nr1_l
-}
nr1_l : String
nr1_l =
    "nr1-l"


{-| nr2_l
-}
nr2_l : String
nr2_l =
    "nr2-l"


{-| nr3_l
-}
nr3_l : String
nr3_l =
    "nr3-l"


{-| nr4_l
-}
nr4_l : String
nr4_l =
    "nr4-l"


{-| nr5_l
-}
nr5_l : String
nr5_l =
    "nr5-l"


{-| nr6_l
-}
nr6_l : String
nr6_l =
    "nr6-l"


{-| nr7_l
-}
nr7_l : String
nr7_l =
    "nr7-l"


{-| nb1_l
-}
nb1_l : String
nb1_l =
    "nb1-l"


{-| nb2_l
-}
nb2_l : String
nb2_l =
    "nb2-l"


{-| nb3_l
-}
nb3_l : String
nb3_l =
    "nb3-l"


{-| nb4_l
-}
nb4_l : String
nb4_l =
    "nb4-l"


{-| nb5_l
-}
nb5_l : String
nb5_l =
    "nb5-l"


{-| nb6_l
-}
nb6_l : String
nb6_l =
    "nb6-l"


{-| nb7_l
-}
nb7_l : String
nb7_l =
    "nb7-l"


{-| nt1_l
-}
nt1_l : String
nt1_l =
    "nt1-l"


{-| nt2_l
-}
nt2_l : String
nt2_l =
    "nt2-l"


{-| nt3_l
-}
nt3_l : String
nt3_l =
    "nt3-l"


{-| nt4_l
-}
nt4_l : String
nt4_l =
    "nt4-l"


{-| nt5_l
-}
nt5_l : String
nt5_l =
    "nt5-l"


{-| nt6_l
-}
nt6_l : String
nt6_l =
    "nt6-l"


{-| nt7_l
-}
nt7_l : String
nt7_l =
    "nt7-l"


{-| collapse
-}
collapse : String
collapse =
    "collapse"


{-| striped__light_silverd
-}
striped__light_silverd : String
striped__light_silverd =
    "striped--light-silverd"


{-| striped__moon_grayd
-}
striped__moon_grayd : String
striped__moon_grayd =
    "striped--moon-grayd"


{-| striped__light_grayd
-}
striped__light_grayd : String
striped__light_grayd =
    "striped--light-grayd"


{-| striped__near_whited
-}
striped__near_whited : String
striped__near_whited =
    "striped--near-whited"


{-| stripe_lightd
-}
stripe_lightd : String
stripe_lightd =
    "stripe-lightd"


{-| stripe_darkd
-}
stripe_darkd : String
stripe_darkd =
    "stripe-darkd"


{-| strike
-}
strike : String
strike =
    "strike"


{-| underline
-}
underline : String
underline =
    "underline"


{-| no_underline
-}
no_underline : String
no_underline =
    "no-underline"


{-| strike_ns
-}
strike_ns : String
strike_ns =
    "strike-ns"


{-| underline_ns
-}
underline_ns : String
underline_ns =
    "underline-ns"


{-| no_underline_ns
-}
no_underline_ns : String
no_underline_ns =
    "no-underline-ns"


{-| strike_m
-}
strike_m : String
strike_m =
    "strike-m"


{-| underline_m
-}
underline_m : String
underline_m =
    "underline-m"


{-| no_underline_m
-}
no_underline_m : String
no_underline_m =
    "no-underline-m"


{-| strike_l
-}
strike_l : String
strike_l =
    "strike-l"


{-| underline_l
-}
underline_l : String
underline_l =
    "underline-l"


{-| no_underline_l
-}
no_underline_l : String
no_underline_l =
    "no-underline-l"


{-| tl
-}
tl : String
tl =
    "tl"


{-| tr
-}
tr : String
tr =
    "tr"


{-| tc
-}
tc : String
tc =
    "tc"


{-| tl_ns
-}
tl_ns : String
tl_ns =
    "tl-ns"


{-| tr_ns
-}
tr_ns : String
tr_ns =
    "tr-ns"


{-| tc_ns
-}
tc_ns : String
tc_ns =
    "tc-ns"


{-| tl_m
-}
tl_m : String
tl_m =
    "tl-m"


{-| tr_m
-}
tr_m : String
tr_m =
    "tr-m"


{-| tc_m
-}
tc_m : String
tc_m =
    "tc-m"


{-| tl_l
-}
tl_l : String
tl_l =
    "tl-l"


{-| tr_l
-}
tr_l : String
tr_l =
    "tr-l"


{-| tc_l
-}
tc_l : String
tc_l =
    "tc-l"


{-| ttc
-}
ttc : String
ttc =
    "ttc"


{-| ttl
-}
ttl : String
ttl =
    "ttl"


{-| ttu
-}
ttu : String
ttu =
    "ttu"


{-| ttn
-}
ttn : String
ttn =
    "ttn"


{-| ttc_ns
-}
ttc_ns : String
ttc_ns =
    "ttc-ns"


{-| ttl_ns
-}
ttl_ns : String
ttl_ns =
    "ttl-ns"


{-| ttu_ns
-}
ttu_ns : String
ttu_ns =
    "ttu-ns"


{-| ttn_ns
-}
ttn_ns : String
ttn_ns =
    "ttn-ns"


{-| ttc_m
-}
ttc_m : String
ttc_m =
    "ttc-m"


{-| ttl_m
-}
ttl_m : String
ttl_m =
    "ttl-m"


{-| ttu_m
-}
ttu_m : String
ttu_m =
    "ttu-m"


{-| ttn_m
-}
ttn_m : String
ttn_m =
    "ttn-m"


{-| ttc_l
-}
ttc_l : String
ttc_l =
    "ttc-l"


{-| ttl_l
-}
ttl_l : String
ttl_l =
    "ttl-l"


{-| ttu_l
-}
ttu_l : String
ttu_l =
    "ttu-l"


{-| ttn_l
-}
ttn_l : String
ttn_l =
    "ttn-l"


{-| f_headline
-}
f_headline : String
f_headline =
    "f-headline"


{-| f_subheadline
-}
f_subheadline : String
f_subheadline =
    "f-subheadline"


{-| f1
-}
f1 : String
f1 =
    "f1"


{-| f2
-}
f2 : String
f2 =
    "f2"


{-| f3
-}
f3 : String
f3 =
    "f3"


{-| f4
-}
f4 : String
f4 =
    "f4"


{-| f5
-}
f5 : String
f5 =
    "f5"


{-| f6
-}
f6 : String
f6 =
    "f6"


{-| f7
-}
f7 : String
f7 =
    "f7"


{-| f1_ns
-}
f1_ns : String
f1_ns =
    "f1-ns"


{-| f2_ns
-}
f2_ns : String
f2_ns =
    "f2-ns"


{-| f3_ns
-}
f3_ns : String
f3_ns =
    "f3-ns"


{-| f4_ns
-}
f4_ns : String
f4_ns =
    "f4-ns"


{-| f5_ns
-}
f5_ns : String
f5_ns =
    "f5-ns"


{-| f6_ns
-}
f6_ns : String
f6_ns =
    "f6-ns"


{-| f7_ns
-}
f7_ns : String
f7_ns =
    "f7-ns"


{-| f1_m
-}
f1_m : String
f1_m =
    "f1-m"


{-| f2_m
-}
f2_m : String
f2_m =
    "f2-m"


{-| f3_m
-}
f3_m : String
f3_m =
    "f3-m"


{-| f4_m
-}
f4_m : String
f4_m =
    "f4-m"


{-| f5_m
-}
f5_m : String
f5_m =
    "f5-m"


{-| f6_m
-}
f6_m : String
f6_m =
    "f6-m"


{-| f7_m
-}
f7_m : String
f7_m =
    "f7-m"


{-| f1_l
-}
f1_l : String
f1_l =
    "f1-l"


{-| f2_l
-}
f2_l : String
f2_l =
    "f2-l"


{-| f3_l
-}
f3_l : String
f3_l =
    "f3-l"


{-| f4_l
-}
f4_l : String
f4_l =
    "f4-l"


{-| f5_l
-}
f5_l : String
f5_l =
    "f5-l"


{-| f6_l
-}
f6_l : String
f6_l =
    "f6-l"


{-| f7_l
-}
f7_l : String
f7_l =
    "f7-l"


{-| measure
-}
measure : String
measure =
    "measure"


{-| measure_wide
-}
measure_wide : String
measure_wide =
    "measure-wide"


{-| measure_narrow
-}
measure_narrow : String
measure_narrow =
    "measure-narrow"


{-| indent
-}
indent : String
indent =
    "indent"


{-| small_caps
-}
small_caps : String
small_caps =
    "small-caps"


{-| truncate
-}
truncate : String
truncate =
    "truncate"


{-| measure_ns
-}
measure_ns : String
measure_ns =
    "measure-ns"


{-| measure_wide_ns
-}
measure_wide_ns : String
measure_wide_ns =
    "measure-wide-ns"


{-| measure_narrow_ns
-}
measure_narrow_ns : String
measure_narrow_ns =
    "measure-narrow-ns"


{-| indent_ns
-}
indent_ns : String
indent_ns =
    "indent-ns"


{-| small_caps_ns
-}
small_caps_ns : String
small_caps_ns =
    "small-caps-ns"


{-| truncate_ns
-}
truncate_ns : String
truncate_ns =
    "truncate-ns"


{-| measure_m
-}
measure_m : String
measure_m =
    "measure-m"


{-| measure_wide_m
-}
measure_wide_m : String
measure_wide_m =
    "measure-wide-m"


{-| measure_narrow_m
-}
measure_narrow_m : String
measure_narrow_m =
    "measure-narrow-m"


{-| indent_m
-}
indent_m : String
indent_m =
    "indent-m"


{-| small_caps_m
-}
small_caps_m : String
small_caps_m =
    "small-caps-m"


{-| truncate_m
-}
truncate_m : String
truncate_m =
    "truncate-m"


{-| measure_l
-}
measure_l : String
measure_l =
    "measure-l"


{-| measure_wide_l
-}
measure_wide_l : String
measure_wide_l =
    "measure-wide-l"


{-| measure_narrow_l
-}
measure_narrow_l : String
measure_narrow_l =
    "measure-narrow-l"


{-| indent_l
-}
indent_l : String
indent_l =
    "indent-l"


{-| small_caps_l
-}
small_caps_l : String
small_caps_l =
    "small-caps-l"


{-| truncate_l
-}
truncate_l : String
truncate_l =
    "truncate-l"


{-| overflow_container
-}
overflow_container : String
overflow_container =
    "overflow-container"


{-| center
-}
center : String
center =
    "center"


{-| center_ns
-}
center_ns : String
center_ns =
    "center-ns"


{-| center_m
-}
center_m : String
center_m =
    "center-m"


{-| center_l
-}
center_l : String
center_l =
    "center-l"


{-| clip
-}
clip : String
clip =
    "clip"


{-| clip_ns
-}
clip_ns : String
clip_ns =
    "clip-ns"


{-| clip_m
-}
clip_m : String
clip_m =
    "clip-m"


{-| clip_l
-}
clip_l : String
clip_l =
    "clip-l"


{-| ws_normal
-}
ws_normal : String
ws_normal =
    "ws-normal"


{-| nowrap
-}
nowrap : String
nowrap =
    "nowrap"


{-| pre
-}
pre : String
pre =
    "pre"


{-| ws_normal_ns
-}
ws_normal_ns : String
ws_normal_ns =
    "ws-normal-ns"


{-| nowrap_ns
-}
nowrap_ns : String
nowrap_ns =
    "nowrap-ns"


{-| pre_ns
-}
pre_ns : String
pre_ns =
    "pre-ns"


{-| ws_normal_m
-}
ws_normal_m : String
ws_normal_m =
    "ws-normal-m"


{-| nowrap_m
-}
nowrap_m : String
nowrap_m =
    "nowrap-m"


{-| pre_m
-}
pre_m : String
pre_m =
    "pre-m"


{-| ws_normal_l
-}
ws_normal_l : String
ws_normal_l =
    "ws-normal-l"


{-| nowrap_l
-}
nowrap_l : String
nowrap_l =
    "nowrap-l"


{-| pre_l
-}
pre_l : String
pre_l =
    "pre-l"


{-| v_base
-}
v_base : String
v_base =
    "v-base"


{-| v_mid
-}
v_mid : String
v_mid =
    "v-mid"


{-| v_top
-}
v_top : String
v_top =
    "v-top"


{-| v_btm
-}
v_btm : String
v_btm =
    "v-btm"


{-| v_base_ns
-}
v_base_ns : String
v_base_ns =
    "v-base-ns"


{-| v_mid_ns
-}
v_mid_ns : String
v_mid_ns =
    "v-mid-ns"


{-| v_top_ns
-}
v_top_ns : String
v_top_ns =
    "v-top-ns"


{-| v_btm_ns
-}
v_btm_ns : String
v_btm_ns =
    "v-btm-ns"


{-| v_base_m
-}
v_base_m : String
v_base_m =
    "v-base-m"


{-| v_mid_m
-}
v_mid_m : String
v_mid_m =
    "v-mid-m"


{-| v_top_m
-}
v_top_m : String
v_top_m =
    "v-top-m"


{-| v_btm_m
-}
v_btm_m : String
v_btm_m =
    "v-btm-m"


{-| v_base_l
-}
v_base_l : String
v_base_l =
    "v-base-l"


{-| v_mid_l
-}
v_mid_l : String
v_mid_l =
    "v-mid-l"


{-| v_top_l
-}
v_top_l : String
v_top_l =
    "v-top-l"


{-| v_btm_l
-}
v_btm_l : String
v_btm_l =
    "v-btm-l"


{-| dim
-}
dim : String
dim =
    "dim"


{-| dimd
-}
dimd : String
dimd =
    "dimd"


{-| glow
-}
glow : String
glow =
    "glow"


{-| glowd
-}
glowd : String
glowd =
    "glowd"


{-| hide_child
-}
hide_child : String
hide_child =
    "hide-child"


{-| hide_childd
-}
hide_childd : String
hide_childd =
    "hide-childd"


{-| underline_hoverd
-}
underline_hoverd : String
underline_hoverd =
    "underline-hoverd"


{-| grow
-}
grow : String
grow =
    "grow"


{-| growd
-}
growd : String
growd =
    "growd"


{-| grow_large
-}
grow_large : String
grow_large =
    "grow-large"


{-| grow_larged
-}
grow_larged : String
grow_larged =
    "grow-larged"


{-| pointerd
-}
pointerd : String
pointerd =
    "pointerd"


{-| shadow_hover
-}
shadow_hover : String
shadow_hover =
    "shadow-hover"


{-| shadow_hoverd
-}
shadow_hoverd : String
shadow_hoverd =
    "shadow-hoverd"


{-| bg_animate
-}
bg_animate : String
bg_animate =
    "bg-animate"


{-| bg_animated
-}
bg_animated : String
bg_animated =
    "bg-animated"


{-| z_0
-}
z_0 : String
z_0 =
    "z-0"


{-| z_1
-}
z_1 : String
z_1 =
    "z-1"


{-| z_2
-}
z_2 : String
z_2 =
    "z-2"


{-| z_3
-}
z_3 : String
z_3 =
    "z-3"


{-| z_4
-}
z_4 : String
z_4 =
    "z-4"


{-| z_5
-}
z_5 : String
z_5 =
    "z-5"


{-| z_999
-}
z_999 : String
z_999 =
    "z-999"


{-| z_9999
-}
z_9999 : String
z_9999 =
    "z-9999"


{-| z_max
-}
z_max : String
z_max =
    "z-max"


{-| z_inherit
-}
z_inherit : String
z_inherit =
    "z-inherit"


{-| z_initial
-}
z_initial : String
z_initial =
    "z-initial"


{-| z_unset
-}
z_unset : String
z_unset =
    "z-unset"


{-| nested_copy_line_height
-}
nested_copy_line_height : String
nested_copy_line_height =
    "nested-copy-line-height"


{-| nested_headline_line_height
-}
nested_headline_line_height : String
nested_headline_line_height =
    "nested-headline-line-height"


{-| nested_list_reset
-}
nested_list_reset : String
nested_list_reset =
    "nested-list-reset"


{-| nested_copy_indent
-}
nested_copy_indent : String
nested_copy_indent =
    "nested-copy-indent"


{-| nested_copy_seperator
-}
nested_copy_seperator : String
nested_copy_seperator =
    "nested-copy-seperator"


{-| nested_img
-}
nested_img : String
nested_img =
    "nested-img"


{-| nested_links
-}
nested_links : String
nested_links =
    "nested-links"


{-| debug
-}
debug : String
debug =
    "debug"


{-| debug_white
-}
debug_white : String
debug_white =
    "debug-white"


{-| debug_black
-}
debug_black : String
debug_black =
    "debug-black"


{-| debug_grid
-}
debug_grid : String
debug_grid =
    "debug-grid"


{-| debug_grid_16
-}
debug_grid_16 : String
debug_grid_16 =
    "debug-grid-16"


{-| debug_grid_8_solid
-}
debug_grid_8_solid : String
debug_grid_8_solid =
    "debug-grid-8-solid"


{-| debug_grid_16_solid
-}
debug_grid_16_solid : String
debug_grid_16_solid =
    "debug-grid-16-solid"
