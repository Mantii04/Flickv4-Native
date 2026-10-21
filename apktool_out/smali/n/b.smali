.class public final Ln/b;
.super Ln/e;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ln/c;Ln/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Ln/b;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ln/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Ln/e;->b:Ln/c;

    .line 7
    .line 8
    iput-object p1, p0, Ln/e;->e:Ln/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ln/c;)Ln/c;
    .locals 1

    .line 1
    iget v0, p0, Ln/b;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Ln/c;->f:Ln/c;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    iget-object p1, p1, Ln/c;->j:Ln/c;

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ln/c;)Ln/c;
    .locals 1

    .line 1
    iget v0, p0, Ln/b;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Ln/c;->j:Ln/c;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    iget-object p1, p1, Ln/c;->f:Ln/c;

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
