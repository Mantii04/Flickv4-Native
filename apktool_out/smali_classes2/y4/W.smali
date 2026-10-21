.class public final synthetic Ly4/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MainActivity;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MainActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/W;->b:I

    iput-object p1, p0, Ly4/W;->e:Lflix/com/vision/activities/MainActivity;

    iput p2, p0, Ly4/W;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ly4/W;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ly4/W;->e:Lflix/com/vision/activities/MainActivity;

    .line 4
    .line 5
    iget v2, p0, Ly4/W;->b:I

    .line 6
    .line 7
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v2, Lflix/com/vision/activities/MainActivity;->T:I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 35
    .line 36
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v0, v2, v3}, Lm1/V;->notifyItemRangeChanged(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-lez p1, :cond_0

    .line 56
    .line 57
    iget-object p1, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    iget p1, v1, Lflix/com/vision/activities/MainActivity;->D:I

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    iput p1, v1, Lflix/com/vision/activities/MainActivity;->D:I

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lflix/com/vision/activities/MainActivity;->g(I)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void

    .line 75
    :pswitch_0
    sget v2, Lflix/com/vision/activities/MainActivity;->T:I

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    iget-object v0, v1, Lflix/com/vision/activities/MainActivity;->B:LC4/P;

    .line 98
    .line 99
    iget-object v2, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    add-int/lit8 v2, v2, -0x1

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v0, v2, v3}, Lm1/V;->notifyItemRangeChanged(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-lez p1, :cond_1

    .line 119
    .line 120
    iget-object p1, v1, Lflix/com/vision/activities/MainActivity;->A:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_1

    .line 127
    .line 128
    iget p1, v1, Lflix/com/vision/activities/MainActivity;->D:I

    .line 129
    .line 130
    add-int/lit8 p1, p1, 0x1

    .line 131
    .line 132
    iput p1, v1, Lflix/com/vision/activities/MainActivity;->D:I

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Lflix/com/vision/activities/MainActivity;->g(I)V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
