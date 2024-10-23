class c_1172_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1172_2;
    c_1172_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10z0z1xx1xz10zxx0010z1x1xxz100zzzzzzzzzzxxxzzzzzxzxzzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
