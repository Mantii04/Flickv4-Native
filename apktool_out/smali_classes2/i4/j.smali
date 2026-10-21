.class public final Li4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li4/n;


# direct methods
.method public constructor <init>(Li4/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/j;->b:Li4/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Li4/j;->b:Li4/n;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-array v3, v1, [F

    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    aput v4, v3, v0

    .line 13
    .line 14
    invoke-static {v3}, Lh4/w;->ofFloat([F)Lh4/w;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, v2, Li4/n;->h:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    move v6, v0

    .line 34
    :goto_0
    if-ge v0, v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Li4/l;

    .line 41
    .line 42
    iget v7, v7, Li4/l;->a:I

    .line 43
    .line 44
    or-int/2addr v6, v7

    .line 45
    add-int/2addr v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, v2, Li4/n;->j:Ljava/util/HashMap;

    .line 48
    .line 49
    new-instance v1, Li4/m;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    iput v6, v1, Li4/m;->a:I

    .line 55
    .line 56
    iput-object v5, v1, Li4/m;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v0, v2, Li4/n;->g:Li4/k;

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Lh4/w;->addUpdateListener(Lh4/v;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Lh4/b;->addListener(Lh4/a;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, v2, Li4/n;->e:Z

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-wide v0, v2, Li4/n;->d:J

    .line 74
    .line 75
    invoke-virtual {v3, v0, v1}, Lh4/w;->setDuration(J)Lh4/w;

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v3}, Lh4/w;->start()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
