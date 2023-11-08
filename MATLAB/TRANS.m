function TransformationMatrix = TRANS(x, y, z)
    TransformationMatrix = eye(4);  

    TransformationMatrix =  [1 0 0 x;
                                0 1 0 y;
                                0 0 1 z;
                                0 0 0 1];
                                    
end
