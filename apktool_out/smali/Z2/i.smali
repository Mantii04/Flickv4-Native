.class public final synthetic LZ2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:LZ2/m;

.field public final synthetic f:LS2/E;


# direct methods
.method public synthetic constructor <init>(LZ2/m;LS2/E;I)V
    .locals 0

    .line 1
    iput p3, p0, LZ2/i;->b:I

    iput-object p1, p0, LZ2/i;->e:LZ2/m;

    iput-object p2, p0, LZ2/i;->f:LS2/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LZ2/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LZ2/i;->e:LZ2/m;

    .line 7
    .line 8
    iget-object v0, v0, LZ2/m;->c:La3/d;

    .line 9
    .line 10
    check-cast v0, La3/r;

    .line 11
    .line 12
    iget-object v1, p0, LZ2/i;->f:LS2/E;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, La3/r;->loadBatch(LS2/E;)Ljava/lang/Iterable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, p0, LZ2/i;->e:LZ2/m;

    .line 20
    .line 21
    iget-object v0, v0, LZ2/m;->c:La3/d;

    .line 22
    .line 23
    check-cast v0, La3/r;

    .line 24
    .line 25
    iget-object v1, p0, LZ2/i;->f:LS2/E;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, La3/r;->hasPendingEventsFor(LS2/E;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
