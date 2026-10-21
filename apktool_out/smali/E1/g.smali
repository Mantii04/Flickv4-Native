.class public final synthetic LE1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LE1/h;


# direct methods
.method public synthetic constructor <init>(LE1/h;I)V
    .locals 0

    .line 1
    iput p2, p0, LE1/g;->b:I

    iput-object p1, p0, LE1/g;->e:LE1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LE1/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LE1/g;->e:LE1/h;

    .line 7
    .line 8
    iget v1, v0, LE1/h;->p:I

    .line 9
    .line 10
    sget-object v2, LE1/h;->v:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, LE1/h;->f:LK1/r;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, v0, LE1/h;->p:I

    .line 18
    .line 19
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "onAllConstraintsMet for "

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v1, v2, v4}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, LE1/h;->j:LE1/m;

    .line 41
    .line 42
    iget-object v2, v1, LE1/m;->j:LC1/r;

    .line 43
    .line 44
    iget-object v4, v0, LE1/h;->u:LC1/v;

    .line 45
    .line 46
    invoke-virtual {v2, v4}, LC1/r;->startWork(LC1/v;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    const-wide/32 v4, 0x927c0

    .line 53
    .line 54
    .line 55
    iget-object v1, v1, LE1/m;->f:LL1/G;

    .line 56
    .line 57
    invoke-virtual {v1, v3, v4, v5, v0}, LL1/G;->startTimer(LK1/r;JLL1/E;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, LE1/h;->b()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v4, "Already started work for "

    .line 72
    .line 73
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v2, v1}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, LE1/g;->e:LE1/h;

    .line 88
    .line 89
    invoke-static {v0}, LE1/h;->a(LE1/h;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
