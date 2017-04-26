function ingenuity_project
    if [ "$argv" = "" ]
        echo "Enter a project alias..."
        return 1
    end
    
    # Get user input
    set project_name $argv
    
    switch $project_name

    ##########
    # ENGAGE #
    ##########

    # Backend side
    case engage_back
        
        cd $ENGAGE_BACKEND_DIR
    
        # Test if an "activate" file exist and run
        set activate "$ENGAGE_BACKEND_DIR/../env/bin/activate.fish"
        
        if test -e $activate
            source $activate
        else
            echo "Error: virtualenv is not set for the project"
            return 1
        end
    # Frontend side
    case engage_front
        cd $ENGAGE_FRONTEND_DIR
        
        # Test if "gulpfile" file exist and run
        set gulp "$ENGAGE_FRONTEND_DIR/gulpfile.js"
        
        if test -e $gulp
            gulp serve
        else
            echo "Error: No gulpfile.js found for the project"
            return 1
        end
    case engage_old
        cd $ENGAGE_BACKEND_OLD
	
    	# Test if an "activate" file exist and run
    	set activate "$ENGAGE_BACKEND_OLD/../env/bin/activate.fish"

    	if test -e $activate
    		source $activate
    	else
    		echo "Error: No such project exist"
        end

    ##################
    # Branch Metrics #
    ##################

    case project_d
	cd $PROJECT_D_DIR

    ########
    # DYLN #
    ########

    case dyln
	cd $DYLN_DIR

    #########
    # LiiRN #
    #########

    case liirn 
	cd $LIIRN_DIR

    ##########
    # Avario #
    ##########

    case avario 
	cd $AVARIO_DIR 

    ##################
    # Branch Metrics #
    ##################

    case branch_metrics
        cd $BRANCH_IO_DIR

    ############
    # Sub-Sync #
    ############

    case sub_sync
        cd $SUB_SYNC_DIR

    #############
    # Paperpost #
    #############

    case paperpost
        cd $PAPERPOST_DIR

    ##############
    # Cloudsuite #
    ##############

    case cloudsuite
        cd $CLOUD_SUITE_DIR

    ########
    # Grin #
    ########

    case grin
	cd $GRIN_DIR

    ##########
    # OTHERS #
    ##########

    case '*'
        return 1
    end
end
