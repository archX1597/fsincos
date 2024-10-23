class c_1537_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1537_2;
    c_1537_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zx011x11xz010z001zz00z1x0z100zzxzzxxzxzzzzxxzxzxzzzzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
