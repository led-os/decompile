.class public Loicq/wlogin_sdk/b/bz;
.super Loicq/wlogin_sdk/b/a;
.source "tlv_t187.java"


# instance fields
.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Loicq/wlogin_sdk/b/a;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/bz;->h:I

    .line 7
    const/16 v0, 0x187

    iput v0, p0, Loicq/wlogin_sdk/b/bz;->g:I

    .line 8
    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    const/16 v0, 0x10

    new-array p1, v0, [B

    .line 16
    :cond_0
    array-length v0, p1

    iput v0, p0, Loicq/wlogin_sdk/b/bz;->h:I

    .line 17
    iget v0, p0, Loicq/wlogin_sdk/b/bz;->h:I

    new-array v0, v0, [B

    .line 18
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v1, p0, Loicq/wlogin_sdk/b/bz;->g:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/bz;->a(I)V

    .line 21
    iget v1, p0, Loicq/wlogin_sdk/b/bz;->h:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/bz;->b([BI)V

    .line 22
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bz;->d()V

    .line 24
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bz;->a()[B

    move-result-object v0

    return-object v0
.end method
