

module memorySystem(
    input[7:0]data,
    input store,
    input[1:0] addr,
    output [7:0] memory
    );
    
    wire [7:0]demuxOutblk1;
    wire [7:0]demuxOutblk2;
    wire [7:0]demuxOutblk3;
    wire [7:0]demuxOutblk4;
    
    wire smdemuxOutblk1;
    wire smdemuxOutblk2;
    wire smdemuxOutblk3;
    wire smdemuxOutblk4;
    
    wire [7:0] blk1OutMuxIn;
    wire [7:0] blk2OutMuxIn;
    wire [7:0] blk3OutMuxIn;
    wire [7:0] blk4OutMuxIn;
    
    memoryBlock block1 (
    .data(demuxOutblk1),
    .E(smdemuxOutblk1),
    .out(blk1OutMuxIn)
    );
    
    memoryBlock block2 (
    .data(demuxOutblk2),
    .E(smdemuxOutblk2),
    .out(blk2OutMuxIn)
    );
    
    memoryBlock block3 (
    .data(demuxOutblk3),
    .E(smdemuxOutblk3),
    .out(blk3OutMuxIn)
    );
    
    memoryBlock block4 (
    .data(demuxOutblk4),
    .E(smdemuxOutblk4),
    .out(blk4OutMuxIn)
    );
    
    demux Demux1(
    .data(data),
    .sel(addr),
    .A(demuxOutblk1),
    .B(demuxOutblk2),
    .C(demuxOutblk3),
    .D(demuxOutblk4)
    );
    
    oneBitDemux smallDemux(
    .sel(addr),
    .data(store),
    .A(smdemuxOutblk1),
    .B(smdemuxOutblk2),
    .C(smdemuxOutblk3),
    .D(smdemuxOutblk4)
    );
    
    Mux muxiplier(
    .in1(blk1OutMuxIn),
    .in2(blk2OutMuxIn),
    .in3(blk3OutMuxIn),
    .in4(blk4OutMuxIn),
    .sel(addr),
    .dout(memory)
    );
    
    
    
    
    
    
endmodule
