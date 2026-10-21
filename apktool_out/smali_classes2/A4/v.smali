.class public final synthetic LA4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/SlideshowActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/v;->b:I

    iput-object p1, p0, LA4/v;->e:Lflix/com/vision/activities/leanback/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, LA4/v;->e:Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 4
    .line 5
    iget v3, p0, LA4/v;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 11
    .line 12
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 22
    .line 23
    :cond_0
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 49
    .line 50
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 60
    .line 61
    :cond_2
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void

    .line 86
    :pswitch_1
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 87
    .line 88
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 98
    .line 99
    :cond_4
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-void

    .line 124
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 125
    .line 126
    sget p1, Lflix/com/vision/activities/leanback/SlideshowActivity;->v:I

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_3
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 133
    .line 134
    iget-object v1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 135
    .line 136
    if-nez v1, :cond_6

    .line 137
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 144
    .line 145
    :cond_6
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_7

    .line 158
    .line 159
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/leanback/SlideshowActivity;->f(Z)V

    .line 165
    .line 166
    .line 167
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->p:Landroid/os/Handler;

    .line 168
    .line 169
    iget-object v0, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->u:LA4/x;

    .line 170
    .line 171
    const-wide/16 v1, 0x36b0

    .line 172
    .line 173
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    .line 175
    .line 176
    :cond_7
    return-void

    .line 177
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 178
    .line 179
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->f:Landroid/widget/ImageView;

    .line 180
    .line 181
    const/16 v1, 0x8

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, v2, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
