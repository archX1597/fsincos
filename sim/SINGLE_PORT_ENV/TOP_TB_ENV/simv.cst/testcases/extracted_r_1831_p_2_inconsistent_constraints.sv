class c_1831_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1831_2;
    c_1831_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z101zxx1001000x1zx00xx00x10x1xxxxzxzxzzxxxxxzzzzxzxzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
