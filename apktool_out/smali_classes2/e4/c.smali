.class public final Le4/c;
.super Lh4/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le4/g;


# direct methods
.method public constructor <init>(Le4/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le4/c;->b:Le4/g;

    .line 2
    .line 3
    iput p2, p0, Le4/c;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Lh4/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lh4/b;)V
    .locals 12

    .line 1
    iget-object p1, p0, Le4/c;->b:Le4/g;

    .line 2
    .line 3
    iget v0, p1, Le4/g;->r:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p1, Le4/g;->r:I

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    iget-object v1, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    :goto_0
    if-ltz v1, :cond_0

    .line 33
    .line 34
    iget-object v2, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Le4/f;

    .line 41
    .line 42
    iget v2, v2, Le4/f;->b:I

    .line 43
    .line 44
    aput v2, v0, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p1, Le4/g;->n:Le4/e;

    .line 50
    .line 51
    iget-object v2, p1, Le4/g;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    check-cast v1, Ld4/d;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Ld4/d;->onDismiss(Landroidx/recyclerview/widget/RecyclerView;[I)V

    .line 56
    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    iput v0, p1, Le4/g;->w:I

    .line 60
    .line 61
    iget-object v0, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Le4/f;

    .line 78
    .line 79
    iget-object v2, v1, Le4/f;->e:Landroid/view/View;

    .line 80
    .line 81
    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    .line 83
    invoke-static {v2, v3}, Li4/a;->setAlpha(Landroid/view/View;F)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, Le4/f;->e:Landroid/view/View;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-static {v1, v2}, Li4/a;->setTranslationX(Landroid/view/View;F)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, p0, Le4/c;->a:I

    .line 97
    .line 98
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    const/4 v8, 0x3

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    move-wide v6, v4

    .line 113
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p1, Le4/g;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p1, Le4/g;->q:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 125
    .line 126
    .line 127
    :cond_2
    return-void
.end method
