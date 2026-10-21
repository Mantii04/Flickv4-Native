.class public final synthetic LA4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/d;->b:I

    iput-object p1, p0, LA4/d;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, LA4/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, LA4/d;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 10
    .line 11
    iput-boolean v0, v1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 12
    .line 13
    iget-object v0, v1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->C:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const-class v0, Lflix/com/vision/activities/MainActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 33
    .line 34
    iget-object v0, p0, LA4/d;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 35
    .line 36
    iget v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 37
    .line 38
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->r:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/16 v3, 0x8

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    if-lez v1, :cond_0

    .line 52
    .line 53
    iget-boolean v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    iput-boolean v4, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "No more result"

    .line 74
    .line 75
    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    .line 81
    .line 82
    iput-boolean v4, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 83
    .line 84
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->C:Landroid/widget/ProgressBar;

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-le v1, v5, :cond_2

    .line 110
    .line 111
    iget-object v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->L:LC4/P;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    add-int/lit8 v5, v5, -0x1

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-virtual {v1, v5, v6}, Lm1/V;->notifyItemRangeChanged(II)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    iget-object v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->L:LC4/P;

    .line 128
    .line 129
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_3

    .line 143
    .line 144
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 145
    .line 146
    add-int/lit8 p1, p1, 0x1

    .line 147
    .line 148
    iput p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V

    .line 151
    .line 152
    .line 153
    :cond_3
    iput-boolean v4, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 154
    .line 155
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->C:Landroid/widget/ProgressBar;

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    :goto_2
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
