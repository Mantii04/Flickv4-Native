.class public final Ln2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b;


# instance fields
.field public final a:Ll2/a;

.field public final b:Ljava/lang/Object;

.field public final c:Ll2/q;


# direct methods
.method public constructor <init>(Ll2/a;Ljava/lang/Object;Ll2/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln2/h;->a:Ll2/a;

    .line 5
    .line 6
    iput-object p2, p0, Ln2/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Ln2/h;->c:Ll2/q;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln2/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/h;->c:Ll2/q;

    .line 4
    .line 5
    iget-object v2, p0, Ln2/h;->a:Ll2/a;

    .line 6
    .line 7
    invoke-interface {v2, v0, p1, v1}, Ll2/a;->encode(Ljava/lang/Object;Ljava/io/File;Ll2/q;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
