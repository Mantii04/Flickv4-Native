.class public final LD1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LK1/E;

.field public final synthetic e:LD1/b;


# direct methods
.method public constructor <init>(LD1/b;LK1/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD1/a;->e:LD1/b;

    .line 5
    .line 6
    iput-object p2, p0, LD1/a;->b:LK1/E;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, LB1/t;->get()LB1/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, LD1/b;->d:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Scheduling work "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, LD1/a;->b:LK1/E;

    .line 15
    .line 16
    iget-object v4, v3, LK1/E;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, LB1/t;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, LD1/a;->e:LD1/b;

    .line 29
    .line 30
    iget-object v0, v0, LD1/b;->a:LD1/c;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [LK1/E;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    invoke-virtual {v0, v1}, LD1/c;->schedule([LK1/E;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
